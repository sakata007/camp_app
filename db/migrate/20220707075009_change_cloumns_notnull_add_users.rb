class ChangeCloumnsNotnullAddUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :name, :string, false
    change_column_null :users, :nickname, :string, false
    change_column_null :users, :gender, :string, false
  end
end
