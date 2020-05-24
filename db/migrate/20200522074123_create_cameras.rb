class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
      t.string :name
      t.string :maker
      t.text :introduction
      t.string :image_id

      t.timestamps
    end
  end
end
