class UserPartiesController < ApplicationController
  def create
    if UserParty.where(user_id: user_party_params["user_id"], party_id: user_party_params["party_id"]).empty?
      @user_party = UserParty.create(user_party_params)
      render :json => @user_party.user
    else
      render :json => { :errors => "User already in party" }, :status => 422
    end
  end

  private
    def user_party_params
      params.require(:user_party).permit(:user_id, :party_id)
    end
end
