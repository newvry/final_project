class UnitsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:lesson_id])
    @unit = @lesson.units.find(params[:id])
  end

end
