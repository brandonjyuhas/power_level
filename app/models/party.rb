class Party < ActiveRecord::Base
  has_many :user_parties
  has_many :users, through: :user_parties
  validates :name, uniqueness: true

  def all_members

  end
end
