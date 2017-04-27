class Unit < ApplicationRecord

  belongs_to :lesson
  has_many :unit_completeds
  has_many :users, through: :unit_completed

  def change_url
    a = self.video.split("watch?v=").join("embed/")
    self.video = a
    self.save
  end

  def previous_unit
    @lesson = self.lesson
    @lesson.units.where("id < ?", self.id).last
  end

  def next_unit
    self.mark_completed
    @lesson = self.lesson
    @lesson.units.where("id > ?", self.id).first

  end

  def not_first
    @lesson = self.lesson
    self != @lesson.units.first
  end

  def not_last
    @lesson = self.lesson
    self != @lesson.units.last
  end

  def mark_completed
    # UnitCompleted.create(user_id: , unit_id: self.id, completed: DateTime.now) if UnitCompleted.where(user_id: 3, unit_id: self.id).empty?

  end
end
