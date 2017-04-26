class CreateUnitCompleteds < ActiveRecord::Migration[5.0]
  def change
    create_table :unit_completeds do |t|
      t.integer  "user_id", index: true
      t.integer  "unit_id", index: true
      t.datetime "completed"
      
      t.timestamps
    end
  end
end
