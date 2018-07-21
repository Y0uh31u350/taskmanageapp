class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order(created_at: 'desc')
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
   @project = Project.new(project_params)
   if @project.save
     redirect_to projects_path
   else
     render 'new'
   end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def toggle
      render nothing: true
      @task     = Task.find(params[:id])
      @task.progress = !@task.progress
      @task.save
  end

  private
    def project_params
      params.require(:project).permit(:name)
    end

end
