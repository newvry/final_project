class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :title
      t.text :description
      t.integer :lesson_id, index: true

      t.timestamps
    end
  end
end
