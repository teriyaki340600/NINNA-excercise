class AddCameraMakerIdToCameras < ActiveRecord::Migration[5.2]
  def change
    add_column :cameras, :camera_maker_id, :integer
  end
end
