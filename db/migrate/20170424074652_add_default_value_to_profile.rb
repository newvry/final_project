class AddDefaultValueToProfile < ActiveRecord::Migration[5.0]
  def change

    change_column_default :profiles, :level, "Entry Level"

  end
end
