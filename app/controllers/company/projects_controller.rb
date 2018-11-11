class Company::ProjectsController < Company::BaseController
  def index
  end

  def show
    @rand = Random.new
  end
end
