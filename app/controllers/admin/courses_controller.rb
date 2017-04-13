class Admin::CoursesController < ApplicationController
  before_action :authenticate_user! 
  before_action :authenticate_admin

  def index
    @courses = Course.all
  end

end
