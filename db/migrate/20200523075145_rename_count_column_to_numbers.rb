class RenameCountColumnToNumbers < ActiveRecord::Migration[5.2]
  def change
    rename_column :accesses, :count, :number
  end
end
