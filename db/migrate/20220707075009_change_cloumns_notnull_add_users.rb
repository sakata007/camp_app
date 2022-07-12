class ChangeCloumnsNotnullAddUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :name, false
    change_column_null :users, :nickname, false
    change_column_null :users, :gender, false
  end
end
