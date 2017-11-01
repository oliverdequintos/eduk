class TeacherSubjectsController < ApplicationController
  def index
    @subjects = Subject.all
    @teacher_subject = TeacherSubject.new
  end

  def create
    @subjects = Subject.all
    @teacher_subject = TeacherSubject.create(teacher_subject_params)
  end

  def destroy
    @subjects = Subject.all
    @teacher_subject = TeacherSubject.find(params[:id])
    @teacher_subject.destroy
  end

  private
    def teacher_subject_params
      params.require(:teacher_subject).permit(:user_id, :subject_id)
    end
end