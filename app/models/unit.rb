class Unit < ApplicationRecord

  belongs_to :lesson

  def change_url
    a = self.video.split("watch?v=").join("embed/")
    self.video = a
    self.save
  end

end
