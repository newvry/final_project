class Admin::LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

end
