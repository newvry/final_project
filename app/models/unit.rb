class Unit < ApplicationRecord

  belongs_to :lesson
  has_one :videoupload
  has_one :fileupload

end
