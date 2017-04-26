class UsersController < ApplicationController

  def trainees
    @trainees = User.all.where("id != ?", current_user.id)


  end
  

end
