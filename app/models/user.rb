class User < ActiveRecord::Base
  # include Level

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

  def find_level
    case self.experience_points
    when 0...1000
      [1, 1000-self.experience_points]
    when 1000...2500
      [2, 2500-self.experience_points]
    when 2500...4500
      [3, 4500-self.experience_points]
    when 4500...7000
      [4, 7500-self.experience_points]
    when 7000...10500
      [5, 10500-self.experience_points]
    when 10500...14500
      [6, 14500-self.experience_points]
    when 14500...20000
      [7, 20000-self.experience_points]
    when 20000...26000
      [8, 26000-self.experience_points]
    when 26000...32500
      [9, 32500-self.experience_points]
    when 32500...29500
      [10, 1000000000-self.experience_points]
    end
  end
end
