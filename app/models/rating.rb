class Rating < ActiveRecord::Base

  def self.teacher_ratings(teacher_id)
    ratings = Rating.where(teacher_id: teacher_id)
    rating_total = ratings.map(&:rate).map(&:to_f).sum
    if rating_total > 0
      return rating_total / ratings.count
    end

    return 0
  end
end
