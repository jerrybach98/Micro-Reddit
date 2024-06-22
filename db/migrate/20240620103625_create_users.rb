class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, index: true, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.belongs_to :user
      t.timestamps
    end
  end
end