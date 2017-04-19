class Lesson < ApplicationRecord
  has_many :units, :dependent => :destroy
  belongs_to :course
end
