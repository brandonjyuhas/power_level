class UserQuestsController < ApplicationController
  def create
    unless UserQuest.exists?(user_id: current_user.id, quest_id: params[:quest_id])
      @user_quest = UserQuest.new(user_id: current_user.id, quest_id: params[:quest_id])
      respond_to do |format|
        if @user_quest.save
          format.json { render json: @user_quest, status: :created }
        else
          format.json { render json: @user_quest.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def complete
    @user_quest = UserQuest.find(params[:id])
    @user_quest.completed
    render json: @user_quest
  end
end