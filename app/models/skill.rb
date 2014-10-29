class Skill < ActiveRecord::Base
  has_many :quests
  has_many :user_experience_points
end
