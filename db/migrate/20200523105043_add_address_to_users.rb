class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :post_code, :string
    add_column :users, :phone_number, :string
    add_column :users, :image_id, :string
  end
end
