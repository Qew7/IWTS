class Job < ActiveRecord::Base
  belongs_to :worker
  validates :job_title, presence: true
end
