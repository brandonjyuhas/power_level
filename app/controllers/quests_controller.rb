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
    @quest = Quest.find(params[:id])
    @quest.upvote_by current_user
    render :json => @quest.find_current_experience_points
  end

  def downvote
    @quest = Quest.find(params[:id])
    @quest.downvote_by current_user
    render :json => @quest.find_current_experience_points
  end

  private
    def quest_params
      params.require(:quest).permit(:name, :description, :experience_points, :skill_id)
    end
end
