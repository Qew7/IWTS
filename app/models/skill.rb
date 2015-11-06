class Skill < ActiveRecord::Base \
belongs_to :worker
validates :title, presence: true
validates :title, uniqueness: true
end
