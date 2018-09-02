class TasksController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @project.tasks.create(tasks_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to project_path(@project)
  end

  def show
    @task = Task.find(params[:id])
    @task.progress = !@task.progress
  end

  def toggle
      render nothing: true
      @task = Task.find(params[:id])
      @task.progress = !@task.progress
      @task.save
  end

  private
    def tasks_params
      params.require(:task).permit(:name, :progress)
    end

end
