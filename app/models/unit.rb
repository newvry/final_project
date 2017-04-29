class Unit < ApplicationRecord

  belongs_to :lesson
  has_many :unit_completeds
  has_many :users, through: :unit_completed

  def change_url
    a = self.video.split("watch?v=").join("embed/")
    self.video = a
    self.save
  end

  def not_first
    @lesson = self.lesson
    self != @lesson.units.first
  end

  def not_last
    @lesson = self.lesson
    self != @lesson.units.last
  end

  
end
