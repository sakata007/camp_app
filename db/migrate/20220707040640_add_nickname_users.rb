class AddNicknameUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :gender, :string
    add_column :users, :comment, :text
    add_column :users, :image_name, :string
  end
end
