class QuestsController < ApplicationController
  def show
    @quest = Quest.find(params[:id])
  end

  def new
    @quest = Quest.new
    @skill = Skill.find(params[:skill])
  end

  def create
    @quest = Quest.new(quest_params)
    if @quest.save
      redirect_to "/skills/#{@quest.skill_id}"
    else
      flash[:alert] = @quest.errors.full_messages
      redirect_to :back
    end
  end

  def upvote

  end

  def downvote

  end

  private
    def quest_params
      params.require(:quest).permit(:name, :description, :experience_points, :skill_id)
    end
end
