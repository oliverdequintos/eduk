class StudentSubject < ActiveRecord::Base
  belongs_to :user
  belongs_to :teacher_subject
end
