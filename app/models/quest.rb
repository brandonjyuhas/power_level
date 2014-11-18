class Quest < ActiveRecord::Base
  # Include Icon for icon to experience points converter
  include Icon
  acts_as_votable

  belongs_to :skill
  has_many :user_quests
  # Find icon after creation
  after_create :set_icon

  validates :name, presence: true
  validates :description, presence: true
  validates :experience_points, presence: true, numericality: { only_integer: true }

  def set_icon
    self.icon_url = self.find_icon
    self.save
  end

end
