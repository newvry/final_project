class Lesson < ApplicationRecord
  has_many :units
  belongs_to :course
end
