class AddCameraMakerIdToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :camera_maker_id, :integer
  end
end
