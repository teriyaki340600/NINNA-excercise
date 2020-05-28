class CreateMagnifierMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :magnifier_makers do |t|

      t.timestamps
    end
  end
end
