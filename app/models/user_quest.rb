class UserQuest < ActiveRecord::Base
  belongs_to :user
  belongs_to :quest

  def completed
    unless self.complete == true
      self.user.experience_points += self.quest.current_experience_points
      self.complete = true
      self.user.save
      self.save
    end
  end
end
