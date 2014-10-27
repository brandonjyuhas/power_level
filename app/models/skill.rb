class Skill < ActiveRecord::Base
  has_many :quests
  has_many :experience_points
end
