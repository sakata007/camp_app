class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :campsite_id
      t.string :image_name
      t.timestamps
    end
  end
end
