class Lesson < ApplicationRecord
  validates_presence_of :title, :description
  
  has_many :units, :dependent => :destroy
  belongs_to :course
end
