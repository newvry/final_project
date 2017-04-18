class Admin::UnitsController < ApplicationController

  before_action :lesson_find, only: [ :new, :create, :edit, :update, :destroy ]

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)

  end

  private

  def unit_params
    params.require(:unit).permit(:title, :description, :lesson_id)
  end
  
end
