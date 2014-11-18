class AddCurrentExperiencePointsToQuest < ActiveRecord::Migration
  def change
    add_column :quests, :current_experience_points, :integer
  end
end
