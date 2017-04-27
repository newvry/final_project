class AddDefaultToUserImage < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :image, "http://images.iimg.in/c/569f4771c45d324bda8b4660-4-501-0-1453279096/google/user-icon-png-pnglogocom.img?crop=1"
  end
end
