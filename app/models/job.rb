class Job < ActiveRecord::Base
  validates :jobtitle, presence: true
end
