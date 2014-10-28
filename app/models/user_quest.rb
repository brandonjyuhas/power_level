class UserQuest < ActiveRecord::Base
  belongs_to :user
  belongs_to :quest

  def completed
    self.complete = true
    self.save
  end
end
