class Admin::UnitsController < ApplicationController

  before_action :unit_find, only: [ :edit, :update, :destroy ]
  before_action :lesson_find, only: [ :create, :edit, :update, :destroy ]

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.lesson_id = @lesson.id
    @unit.change_url
    if @unit.save
      redirect_to admin_lesson_path(@lesson)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @unit.update(unit_params)
      redirect_to admin_lesson_path(@lesson)
    else
      render :edit
    end
  end

  def destroy
    @unit.destroy
    redirect_to admin_lesson_path(@lesson)
  end

  private

  def unit_params
    params.require(:unit).permit(:title, :description, :lesson_id, :video)
  end

  def unit_find
    @unit = Unit.find(@lesson, params[:id])
  end

  def lesson_find
    @lesson = Lesson.find(params[:lesson_id])
  end
end
