class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :id_course
      t.string :name
      t.string :code
      t.string :term
      t.timestamps
    end
  end
end
