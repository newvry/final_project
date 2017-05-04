class Admin::CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  before_action :find_course, only: [:edit, :show, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
    @lessons = @course.lessons
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to admin_courses_path
    else
      render :new
    end
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
    @course = Course.find(params[:id]).includes(:lessons)
  end

  def course_params
    params.require(:course).permit(:title, :description)
  end


end
