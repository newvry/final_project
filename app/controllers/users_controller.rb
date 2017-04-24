class UsersController < ApplicationController

	def new
		@profile = Profile.new
	end

  def show
		@profile = current_user.profile
  end

end
