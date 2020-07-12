class AddChoiceToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :choice, :boolean
  end
end
