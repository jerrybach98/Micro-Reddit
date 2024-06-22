class AddUserIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :user_id, :bigint, null: false
    add_index :posts, :user_id
    add_foreign_key :posts, :users, column: :user_id
  end
end
