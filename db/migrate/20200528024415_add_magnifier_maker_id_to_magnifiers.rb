class AddMagnifierMakerIdToMagnifiers < ActiveRecord::Migration[5.2]
  def change
    add_column :magnifiers, :magnifier_maker_id, :integer
  end
end
