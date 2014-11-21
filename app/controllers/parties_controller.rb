class PartiesController < ApplicationController

  def create
    @party = Party.new(party_params)
    if @party.save
      # Create a new user party with the current user
      UserParty.create(party_id: @party.id, user_id: current_user.id)
      # Render the json with the user to properly display
      render :json => @party.to_json(:include => [:users])
    end
  end

  private
    def party_params
      params.require(:party).permit(:name)
    end

end
