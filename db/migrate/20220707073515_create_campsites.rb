class CreateCampsites < ActiveRecord::Migration[7.0]
  def change
    create_table :campsites do |t|
      t.string :name
      t.string :prefecture
      t.string :municipalitie
      t.string :address
      t.text :introduction
      t.timestamps
    end
  end
end
