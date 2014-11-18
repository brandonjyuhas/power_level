class Party < ActiveRecord::Base
  has_many :user_parties
end
