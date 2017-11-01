class Rating < ActiveRecord::Base

  def self.teacher_ratings(teacher_id)
    Rating.sum(:rate, conditions: {teacher_id: teacher_id})
  end
end
