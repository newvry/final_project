class AddVideoToUser < ActiveRecord::Migration[5.0]
  def change

    add_column :users, :video, :string
    add_column :users, :image, :string
    add_column :users, :document, :string

  end
end
