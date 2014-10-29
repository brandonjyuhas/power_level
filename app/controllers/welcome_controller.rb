class WelcomeController < ApplicationController
  def index
    @skills = Skill.order(created_at: :desc).limit(4)
  end

end
