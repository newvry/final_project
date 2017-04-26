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
    @lesson = self.lesson
    @lesson.units.where("id > ?", self.id).first

    # self.mark_completed
  end

  # def mark_completed
  #   self.completed = DateTime.now
  #   self.completed.user_id = current_user
  #   self.completed.save
  # end

end
