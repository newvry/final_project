class Admin::UsersController < ApplicationController

  def index
    @users = User.where.not(role: "admin")
  end

  def update
    @user = User.find(params[:id])
    @course = Course.find(params[:user][:course_id])
    @user.level = @course.title
    @user.course_id = @course.id

    @user.update(user_params)
    flash[:notice] = "You change #{@user.name} to #{@user.level} "
    redirect_to admin_users_path
  end



  private

  def user_params
     params.require(:user).permit(:course_id, :level)
  end

end
