class AddCourseNameToEnrollments < ActiveRecord::Migration[6.1]
  def change
    add_column :enrollments, :course_name, :string
  end
end
