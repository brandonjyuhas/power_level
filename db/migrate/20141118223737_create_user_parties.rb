class CreateUserParties < ActiveRecord::Migration
  def change
    create_table :user_parties do |t|

      t.timestamps
    end
  end
end
