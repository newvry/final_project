class UnitsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:lesson_id])
    @course = @lesson.course
    @unit = @lesson.units.find(params[:id])
  end

end
