class Admin::LessonsController < ApplicationController

  before_action :authenticate_user!
  before_action :authenticate_admin

  before_action :lesson_find, only: [ :edit, :update, :destroy]
  before_action :find_course, only: [ :new, :create, :edit, :update, :destroy]

  # def index
  #   @course = Course.find(params[:course_id])
  #   @lessons = @course.lessons
  # end

  def show
    @lesson = Lesson.find(params[:id])
    @units = @lesson.units
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.course_id = @course.id
    if @lesson.save
      redirect_to admin_course_path(@course)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to admin_course_path(@course)
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to admin_course_path(@course)
  end


  private

  def lesson_find
    @lesson = Lesson.find(params[:id])
  end

  def find_course
    @course = Course.find(params[:course_id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :description, :course_id)
  end

end
