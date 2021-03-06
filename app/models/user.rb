class User < ActiveRecord::Base
  # Include level module in lib/level.rb
  include Level
  # Include title module in lib/title.rb
  include Title

  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable
  has_many  :user_experience_points
  has_many  :user_quests
  has_many  :user_parties
  has_many  :parties, through: :user_parties
  validates :username, presence: true
  validates :icon_url, presence: true

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

  # Figure out the level, XP to next level, XP, and Title
  def find_level
    determine_level(self.experience_points, self.user_quests.where(complete: true))
  end

  # Join a party
  def join_party(party)
    UserParty.create(user_id: self.id, party_id: party)
  end

  def find_parties
    user_parties = UserParty.where(user_id: self.id)
    unless user_parties.empty?
      user_parties.map do |user_party|
        Party.find(user_party.party_id)
      end
    end
  end
end
