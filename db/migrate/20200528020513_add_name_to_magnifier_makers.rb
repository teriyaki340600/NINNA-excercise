class AddNameToMagnifierMakers < ActiveRecord::Migration[5.2]
  def change
    add_column :magnifier_makers, :name, :string
  end
end
