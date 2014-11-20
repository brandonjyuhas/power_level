class Party < ActiveRecord::Base
  has_many :user_parties

  def all_members

  end
end
