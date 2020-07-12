class CreateAccesses < ActiveRecord::Migration[5.2]
  def change
    create_table :accesses do |t|
      t.integer :photo_id
      t.integer :count

      t.timestamps
    end
  end
end
