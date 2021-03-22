class AddSubjectIdToSubjects < ActiveRecord::Migration[6.1]
  def change
    add_column :subjects, :subject_id, :string
  end
end
