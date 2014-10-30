class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_quests = UserQuest.where(user_id: params[:id])
    @user_quests = @user_quests.reverse
    @quests = @user_quests.map do |x|
      x.quest
    end
    @level = @user.find_level
  end

  def update_stats
    @stats =  @user.find_level
    render :json => @stats
  end
end