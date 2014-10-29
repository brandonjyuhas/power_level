class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :user_experience_points do |t|
      t.references :user, index: true
      t.references :skill, index: true
      t.integer :points

      t.timestamps
    end
  end
end
