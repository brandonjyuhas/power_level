class CreateUserParties < ActiveRecord::Migration
  def change
    create_table :user_parties do |t|
      t.references :user, index: true
      t.references :party, index: true
      t.timestamps
    end
  end
end
