class UsersController < ApplicationController
    
  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user = User.update(user_params)
      redirect_to user_path(@user)
    else
      render courses_path
    end
  end

  def trainees
    @trainees = User.all.where("id != ?", current_user.id)
  end
  

  private

  def user_params
    params.require(:user).permit(:image, :name, :intro, :level, :mobile_phone)
  end

end
