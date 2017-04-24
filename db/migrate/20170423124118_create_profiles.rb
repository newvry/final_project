class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|

      t.string :image
      t.string :name
      t.string :level
      t.text :intro
      t.integer :user_id

      t.timestamps
    end
  end
end
