class CreateTeacherSubjects < ActiveRecord::Migration
  def change
    create_table :teacher_subjects do |t|
      t.references :subject, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
