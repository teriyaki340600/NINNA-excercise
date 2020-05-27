class RemoveMakerFromMagnifiers < ActiveRecord::Migration[5.2]
  def change
    remove_column :magnifiers, :maker, :string
  end
end
