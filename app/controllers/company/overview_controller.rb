class Company::OverviewController < Company::BaseController
  def index
    @projects = company.projects
  end
end
