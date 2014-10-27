class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experience_points do |t|
      t.references :user, index: true
      t.references :skill, index: true
      t.integer :points

      t.timestamps
    end
  end
end
