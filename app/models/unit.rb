class Unit < ApplicationRecord

  belongs_to :lesson
  has_one :videoupload

end
