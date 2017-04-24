class ProfilesController < ApplicationController

  def new
		@profile = current_user.build_profile
	end

  def create
    @profile = current_user.build_profile(profile_params)
    @profile.save
    
    redirect_to user_profile_path(current_user, :id)
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)

    redirect_to user_profile_path(current_user, :id)
  end

  def show
		@profile = current_user.profile
  end

  private

  def profile_params
    params.require(:profile).permit(:image, :name, :intro, :level, :user_id)
  end

end
