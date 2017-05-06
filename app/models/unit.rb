class Unit < ApplicationRecord

  validates_presence_of :title, :description, :video, :image

  mount_uploader :image, PhotoImageUploader

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

  def is_first?
    @lesson = self.lesson
    self == @lesson.units.first
  end  

  def is_last?
    @lesson = self.lesson
    self == @lesson.units.last
  end 
  
end
