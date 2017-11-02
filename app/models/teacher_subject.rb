class TeacherSubject < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user
  has_many :student_subject
end
