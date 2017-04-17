class CreateFileuploads < ActiveRecord::Migration[5.0]
  def change
    create_table :fileuploads do |t|

      t.string :document
      t.integer :user_id
      t.integer :unit_id

      t.timestamps
    end
  end
end
