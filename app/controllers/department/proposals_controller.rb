class Department::ProposalsController < Department::BaseController
  def show
    @company_proposal = CompanyProposal.find(params[:id])
  end

  def show_interest
    company_proposal = CompanyProposal.find(params[:proposal_id])
    company_proposal.status = 'accepted'
    company_proposal.save!

    redirect_to department_root_path
  end
end
