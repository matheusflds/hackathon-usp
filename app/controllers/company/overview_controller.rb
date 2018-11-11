class Company::OverviewController < Company::BaseController
  def index
    @department_proposals = current_company.tags.map do |tag|
      DepartmentProposal.joins(:tags).where("tags.value = '#{tag.value}'").first
    end
    @department_proposals = @department_proposals.uniq
    @department_proposals = @department_proposals[0..4]
    @projects = current_company.projects
  end
end
