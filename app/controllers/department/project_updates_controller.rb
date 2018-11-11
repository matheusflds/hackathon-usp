class Department::ProjectUpdatesController < Department::BaseController
  def new
    @project_update = ProjectUpdate.new
    @subjects = ["equipamento", "pessoa", "transporte"]
  end

  def create
    @project_update = ProjectUpdate.new(post_params)
    @project_update.project_id = params[:project_id]
    @project_update.save

    if @project_update.save
      redirect_to department_project_path(@project_update.project), notice: 'Atualização criada com sucesso.'
    else
      render :new
    end
  end

  def post_params
    params.require(:project_update).permit(:title, :value, :subject, :description)
  end
end
