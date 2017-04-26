class AddColunmsToUsers < ActiveRecord::Migration[5.0]
  def change

    add_column :users, :name, :string
    add_column :users, :level, :string, default: "Entry Level"
    add_column :users, :intro, :text
    add_column :users, :mobile_phone, :integer

  end
end
