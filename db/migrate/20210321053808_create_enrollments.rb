class CreateEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrollments do |t|
      t.integer :user_id
      t.string :course_id

      t.timestamps
    end
  end
end
