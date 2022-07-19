class CreateCampsiteLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :campsite_likes do |t|
      t.integer :campsite_id, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end
  end
end
