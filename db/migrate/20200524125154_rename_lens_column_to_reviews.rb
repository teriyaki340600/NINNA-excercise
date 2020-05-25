class RenameLensColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :lens_id, :magnifier_id
  end
end
