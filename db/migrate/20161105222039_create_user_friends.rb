class CreateUserFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :user_friends, :id => false do |t|
      t.integer :user_id, null: false
      t.integer :friend_id, null: false
      t.boolean :status

      t.timestamps
    end
  end
end
