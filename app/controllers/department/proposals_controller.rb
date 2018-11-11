class Department::ProposalsController < Department::BaseController
  def show
    @department_proposal = DepartmentProposal.find(params[:id])
  end

  def show_interest
    company_proposal = CompanyProposal.find(params[:proposal_id])
    company_proposal.status = 'accepted'
    company_proposal.department = current_department
    company_proposal.save!

    redirect_to department_root_path
  end
  
  def new
    @department_proposal = DepartmentProposal.new
  end

  def create
    tags_array = input_to_array(params[:department_proposal][:tags])

    tags = []

    tags_array.each do |tag|
      tags << Tag.find_or_create_by(value: tag.downcase)
    end
    params[:department_proposal][:tags] = tags

    @department_proposal = DepartmentProposal.new(post_params)
    @department_proposal.tags = tags
    @department_proposal.department = current_department
    @department_proposal.status = 'pending'

    if @department_proposal.save
      redirect_to department_proposal_path(@department_proposal), notice: 'Proposta criada com sucesso.'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:department_proposal).permit(:name, :description, :investments, :integrants,
                                             :link, :notes, :tags)
  end

  def input_to_array(input)
    input.split(';')
  end

end
