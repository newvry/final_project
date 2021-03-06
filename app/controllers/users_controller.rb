class UsersController < ApplicationController
  
   before_action :authenticate_user!
    
  def show
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def trainees
    @trainees = User.all.where("id != ? and role != ?", current_user.id, "admin")
  end
  

  private

  def user_params
    params.require(:user).permit(:image, :name, :intro, :level, :mobile_phone, :user_facebook, :user_linkedin, :user_google, :user_twitter)
  end

end
