class RatingsController < ApplicationController
  before_action :refresh_index, only: [:index]

  def index
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.create(rating_params)
    refresh_index
  end

  private
    def rating_params
      params.require(:rating).permit(:student_id, :teacher_id, :rate, :notes)
    end

    def refresh_index
      teacher_subject_user_ids = TeacherSubject.joins(:student_subject).where('student_subjects.user_id = ?', current_user.id).map(&:user_id)
      @teachers = User.where(id: teacher_subject_user_ids)
    end
end
