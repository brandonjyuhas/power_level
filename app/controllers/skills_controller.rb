class SkillsController < ApplicationController
  def show
    @skill = Skill.find(params[:id])
    @quests = Quest.where(skill_id: params[:id]).order(:experience_points)
    if user_signed_in?
      @selected_quests = UserQuest.where(user_id: current_user.id)
      @selected_quests = @selected_quests.map do |x|
        x.quest_id
      end
    end
  end
end