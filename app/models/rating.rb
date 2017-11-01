class Rating < ActiveRecord::Base

  def self.teacher_ratings(teacher_id)
    ratings = Rating.where(teacher_id: teacher_id)
    ratings.map(&:rate).map(&:to_f).sum / ratings.count
  end
end
