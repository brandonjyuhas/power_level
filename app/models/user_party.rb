class UserParty < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :party
end
