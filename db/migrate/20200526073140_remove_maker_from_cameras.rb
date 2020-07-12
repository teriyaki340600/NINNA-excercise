class RemoveMakerFromCameras < ActiveRecord::Migration[5.2]
  def change
    remove_column :cameras, :maker, :string
  end
end
