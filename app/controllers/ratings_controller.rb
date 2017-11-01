class RatingsController < ApplicationController
  def index
    @teachers = User.where(is_teacher: true)
  end
end