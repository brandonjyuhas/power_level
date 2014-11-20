class UsersController < ApplicationController
  def index
    @users = User.all
    @parties = current_user.find_parties if user_signed_in?
  end

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