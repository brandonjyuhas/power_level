class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_quests = UserQuest.where(user_id: params[:id])
    @user_quests = @user_quests.reverse
    @quests = @user_quests.map do |x|
      x.quest
    end
  end
end