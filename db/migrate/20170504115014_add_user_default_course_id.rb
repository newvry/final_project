class AddUserDefaultCourseId < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :course_id, Course.first.id
  end
end
