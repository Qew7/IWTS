class Worker < ActiveRecord::Base
	has_many :jobs
	has_many :skills
	validates :name, presence: true
	validates :surname, presence: true
end
