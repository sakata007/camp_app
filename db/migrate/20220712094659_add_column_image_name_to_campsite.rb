class AddColumnImageNameToCampsite < ActiveRecord::Migration[7.0]
  def change
    add_column :campsites, :image_name, :string
  end
end
