class Subject < ActiveRecord::Base
  validates :name, presence: true
  validates :subject_code, presence: true
  validates_uniqueness_of :subject_code, :case_sensitive => false
end
