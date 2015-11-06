class Job < ActiveRecord::Base
  belongs_to :workers
  validates :job_title, presence: true
end
