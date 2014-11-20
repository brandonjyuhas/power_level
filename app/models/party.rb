class Party < ActiveRecord::Base
  has_many :user_parties
  has_many :users, through: :user_parties

  def all_members

  end
end
