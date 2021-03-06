class UnitsController < ApplicationController

  before_action :authenticate_user!

  def show
    @lesson = Lesson.find(params[:lesson_id])
    @course = @lesson.course
    @unit = @lesson.units.find(params[:id])
    render :show
  end 

  def previous_unit
    @lesson = Lesson.find(params[:lesson_id])
    @unit = @lesson.units.find(params[:unit_id])
    
    @previous_unit = @lesson.units.where("id < ?", @unit.id).last
    redirect_to lesson_unit_path(@lesson, @previous_unit)
  end

  def next_unit
    @lesson = Lesson.find(params[:lesson_id])
    @unit = @lesson.units.find(params[:unit_id])

    mark_completed(@unit)
    @next_unit = @lesson.units.where("id > ?", @unit.id).first
    redirect_to lesson_unit_path(@lesson, @next_unit)
  end
 
  def mark_completed(unit)
    UnitCompleted.create(user_id: current_user.id , 
                         unit_id: unit.id, 
                         completed: DateTime.now) if UnitCompleted.where(user_id: current_user, 
                                                                         unit_id: unit.id).empty?

  end

  def previous_lesson
    @lesson = Lesson.find(params[:lesson_id])
    @unit = @lesson.units.find(params[:unit_id])
    @course = @lesson.course

    @previous_lesson = Lesson.where("id < ? and course_id = ?", @lesson.id, @course.id).last
    @previous_lesson_unit = @previous_lesson.units.last

    redirect_to lesson_unit_path(@previous_lesson, @previous_lesson_unit)

  end

  def next_lesson
    @lesson = Lesson.find(params[:lesson_id])
    @unit = @lesson.units.find(params[:unit_id])
    @course = @lesson.course
  
    mark_completed(@unit)
    @next_lesson = Lesson.where("id > ? and course_id = ?", @lesson.id, @course.id).first
    @next_lesson_unit = @next_lesson.units.first
    redirect_to lesson_unit_path(@next_lesson, @next_lesson_unit)
  end

end
