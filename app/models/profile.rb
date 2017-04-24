class Profile < ApplicationRecord

    mount_uploader :image, PhotoImageUploader

    belongs_to :user

end
