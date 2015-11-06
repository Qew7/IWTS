class Skill < ActiveRecord::Base \
belongs_to :workers
validates :title, presence: true
validates :title, uniqueness: true
end
