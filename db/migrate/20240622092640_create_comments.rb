class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :commenter, null: false
      t.string :body, null: false
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end

    #add_column :comments, :user_id, :bigint, null: false
    #add_column :comments, :post_id, :bigint, null: false
  end
end
