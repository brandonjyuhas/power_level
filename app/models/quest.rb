class Quest < ActiveRecord::Base
  belongs_to :skill
  has_many :user_quests
end
