class AddAddressCompleteToBathroom < ActiveRecord::Migration[5.1]
  def change
    add_column :bathrooms, :address_complete, :string
  end
end
