class StaticPagesController < ApplicationController
  def index
    @student_subjects = []
    @student_subjects = StudentSubject.where(user_id: current_user.id) unless current_user.is_teacher?
    @teacher_subjects = []
    @teacher_subjects = TeacherSubject.where(user_id: current_user.id) if current_user.is_teacher?
    @teacher_ratings = Rating.teacher_ratings(current_user.id)
  end
end
