class AddCameraIdToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :camera_id, :integer
    add_column :photos, :magnifier_id, :integer
  end
end
