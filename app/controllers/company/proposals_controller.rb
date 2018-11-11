class Company::ProposalsController < Company::BaseController
  def new
    @company_proposal = CompanyProposal.new
  end

  def show
    @department_proposal = DepartmentProposal.find(params[:id])
  end

  def create
    tags_array = input_to_array(params[:company_proposal][:tags])

    tags = []

    tags_array.each do |tag|
      tags << Tag.find_or_create_by(value: tag.downcase)
    end
    params[:company_proposal][:tags] = tags

    @company_proposal = CompanyProposal.new(post_params)
    @company_proposal.tags = tags
    @company_proposal.company = current_company

    if @company_proposal.save
      redirect_to @company_proposal, notice: 'Proposta criada com sucesso.'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:company_proposal).permit(:name, :description, :investments, :notes, :tags)
  end

  def input_to_array(input)
    input.split(';')
  end
end
