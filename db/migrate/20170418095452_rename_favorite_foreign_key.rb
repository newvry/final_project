class RenameFavoriteForeignKey < ActiveRecord::Migration[5.0]
  def change
    rename_column :favorites, :course_id, :unit_id
  end
end
