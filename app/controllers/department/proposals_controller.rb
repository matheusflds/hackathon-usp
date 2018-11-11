class Department::ProposalsController < Department::BaseController
  def show
    @company_proposal = CompanyProposal.find(params[:id])
  end
end
