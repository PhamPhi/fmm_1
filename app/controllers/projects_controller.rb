class ProjectsController < ApplicationController

  def index
    @projects =Project.paginate page: params[:page],per_page: 3
  end
  
  def show
    @project = Project.find params[:id]
    @users = @project.users
  end
end