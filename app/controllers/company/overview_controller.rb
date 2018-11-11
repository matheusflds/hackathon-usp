class Company::OverviewController < Company::BaseController
  def index
    @projects = current_company.projects
  end
end
