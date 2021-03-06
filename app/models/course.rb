class Course < ApplicationRecord
  validates_presence_of :title, :description

  has_many :lessons, :dependent => :destroy
  has_many :users

end
