class StudentSubjectsController < ApplicationController
  before_action :refresh_index_values, only: [:index]

  def index
  end

  def available_professor
    @teacher_subjects = TeacherSubject.where(subject_id: params[:student_subject_id]).joins(:user)
    @subject = Subject.find(params[:student_subject_id])
    @student_subject = StudentSubject.new
  end

  def create
    @student_subject = StudentSubject.create(student_subject_params)
    refresh_index_values
  end

  def destroy
    @subjects = Subject.all
    @student_subject = StudentSubject.find(params[:id])
    @student_subject.destroy
    refresh_index_values
  end

  private
    def student_subject_params
      params.require(:student_subject).permit(:user_id, :teacher_subject_id)
    end

    def refresh_index_values
      @subjects = Subject.all
      @student_join_teacher_subjects = StudentSubject.joins(:teacher_subject).where(user_id: current_user.id)
      @student_join_teacher_subjects_subject_id = @student_join_teacher_subjects.pluck(:subject_id)
    end
end