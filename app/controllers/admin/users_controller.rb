class Admin::UsersController < ApplicationController

  def index
    @users = User.where.not(role: "admin")


  end

end
