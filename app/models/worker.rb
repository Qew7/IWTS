class Worker < ActiveRecord::Base
  validates :name, presence: true
  validates :surname, presence: true
end
