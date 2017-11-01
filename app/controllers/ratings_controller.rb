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
      @teachers = User.where(is_teacher: true)
    end
end
