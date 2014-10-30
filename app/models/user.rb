class User < ActiveRecord::Base
  # Include level module in lib/level.rb
  include Level

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_experience_points
  has_many :user_quests

  # Figure out which quests have been completed
  def find_completed
    completed = self.user_quests.where(complete: true)
    completed.map do |x|
      x.quest_id
    end
  end

  # Figure out which quests have been selected (but not completed)
  def find_selected
    selected_quests = self.user_quests.where(complete: false)
    selected_quests.map do |x|
      x.quest_id
    end
  end

  # Figure out the level, XP to next level, and XP
  def find_level
    determine_level(self.experience_points)
  end
end
