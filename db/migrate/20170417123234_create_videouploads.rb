class CreateVideouploads < ActiveRecord::Migration[5.0]
  def change
    create_table :videouploads do |t|

      t.string :video
      t.integer :user_id
      t.integer :unit_id

      t.timestamps
    end
  end
end
