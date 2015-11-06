class Worker < ActiveRecord::Base
  has_many :skills
  has_one :job
  validates :name, presence: true
  validates :surname, presence: true
end
