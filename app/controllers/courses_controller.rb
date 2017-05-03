class CoursesController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  # before_action :authenticate_admin

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @lessons = @course.lessons
    @lesson = @course.lessons.find(params[:lesson])
  end



end
