class AddReadToUnits < ActiveRecord::Migration[5.0]
  def change

    add_column :units, :read, :boolean

  end
end
