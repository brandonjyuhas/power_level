class User < ActiveRecord::Base
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

  def find_selected
    selected_quests = self.user_quests.where(complete: false)
    selected_quests.map do |x|
      x.quest_id
    end
  end
end
