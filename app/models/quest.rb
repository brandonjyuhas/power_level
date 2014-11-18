class Quest < ActiveRecord::Base
  # Include Icon for icon to experience points converter
  include Icon
  acts_as_votable

  belongs_to :skill
  has_many :user_quests
  # Find icon after creation
  after_create :set_icon, :find_current_experience_points

  validates :name, presence: true
  validates :description, presence: true
  validates :experience_points, presence: true, numericality: { only_integer: true }

  def set_icon
    self.icon_url = self.find_icon
    self.save
  end

  def find_current_experience_points
    self.current_experience_points = self.experience_points + (self.get_likes.size * 100) - (self.get_dislikes.size * 100)
    self.save
    self.current_experience_points
  end

end
