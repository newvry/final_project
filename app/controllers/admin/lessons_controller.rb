class Admin::LessonsController < ApplicationController

  before_action :authenticate_user!
  before_action :authenticate_admin

  before_action :lesson_find, only: [:edit, :update, :destroy]

  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to admin_lessons_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to admin_lessons_path
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to admin_lessons_path
  end


  private

  def lesson_find
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:title, :description)
  end

end
