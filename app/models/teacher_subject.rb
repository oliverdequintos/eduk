class TeacherSubject < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user
  belongs_to :student_subject
end
