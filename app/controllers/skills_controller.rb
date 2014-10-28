class SkillsController < ApplicationController
  def show
    @skill = Skill.find(params[:id])
    @quests = Quest.where(skill_id: params[:id]).reverse
  end
end