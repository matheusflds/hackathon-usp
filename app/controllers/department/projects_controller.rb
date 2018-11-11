class Department::ProjectsController < Department::BaseController
  def index
    @proposals = DepartmentProposal.all
  end

  def show
    @rand = Random.new
    @project = Project.find(params[:id])
    @updates = @project.project_updates.group(:subject).sum(:value)
  end
end
