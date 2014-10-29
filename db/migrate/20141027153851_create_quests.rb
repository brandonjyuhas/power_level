class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.references :skill, index: true
      t.string :name
      t.text :description
      t.integer :experience_points
      t.string :link

      t.timestamps
    end
  end
end
