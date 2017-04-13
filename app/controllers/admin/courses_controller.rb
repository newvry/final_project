class Admin::CoursesController < ApplicationController
  before_action :authenticate_user! 
  before_action :authenticate_admin

  before_action :find_course, only: [:edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.save
    redirect_to admin_courses_path
  end

  def edit
  end

  def update
    @course.update(course_params)
    redirect_to admin_courses_path
  end

  def destroy
    @course.destroy
    redirect_to admin_courses_path
  end


  private

  def find_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description)
  end
  

end
