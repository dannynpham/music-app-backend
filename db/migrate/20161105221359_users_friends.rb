class UsersFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :users_friends, :id => false do |t|
      t.integer :user_id
      t.integer :friend_id
      t.boolean :status

      t.timestamps
    end
  end
end
