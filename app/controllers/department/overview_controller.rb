class Department::OverviewController < Department::BaseController
  def index
    @company_proposals = current_department.tags.map do |tag|
      CompanyProposal.joins(:tags).where("tags.value = '#{tag.value}'").first 
    end
    @company_proposals = @company_proposals.uniq.compact
    @company_proposals = @company_proposals[0..4]
  end
end
