class CreateCameraMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :camera_makers do |t|
      t.string :name

      t.timestamps
    end
  end
end
