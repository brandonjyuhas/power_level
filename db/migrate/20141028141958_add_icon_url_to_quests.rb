class AddIconUrlToQuests < ActiveRecord::Migration
  def change
    add_column :quests, :icon_url, :string
  end
end
