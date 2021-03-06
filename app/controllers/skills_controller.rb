class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def show
    # Hacky way to resolve no method .include? on nil
    @completed_quests = []
    @selected_quests = []
    @skill = Skill.find(params[:id])
    @quests = Quest.where(skill_id: params[:id]).order(:experience_points)
    if user_signed_in?
      @completed_quests = current_user.find_completed
      @selected_quests = current_user.find_selected
    end
  end
end