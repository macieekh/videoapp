class AddCourseIdToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :course_id, :integer
    add_index :chapters, :course_id
  end
end
