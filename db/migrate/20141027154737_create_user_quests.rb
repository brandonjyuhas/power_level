class CreateUserQuests < ActiveRecord::Migration
  def change
    create_table :user_quests do |t|
      t.references :user, index: true
      t.references :quest,  index: true
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
