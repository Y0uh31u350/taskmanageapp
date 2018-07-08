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
  end


end
