class AddMagnifierMakerIdToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :magnifier_maker_id, :integer
  end
end
