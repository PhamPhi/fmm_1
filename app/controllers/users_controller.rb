class UsersController < ApplicationController
  def edit
    @user = User.find params[:id]
  end

  def update
    if @user.update_attributes user_params
      flash[:success] = "This profile have been updated..."
      redirect_to @user
    else
    render action: 'edit'
    end
  end

  def show
    @user = User.find params[:id]
    @skills = @user.skills
    @projects = @user.projects
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :birth_date, :password, :password_confirmation, :profile)
  end

end