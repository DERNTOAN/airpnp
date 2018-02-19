class AddPlzAndCityToBathrooms < ActiveRecord::Migration[5.1]
  def change
    add_column :bathrooms, :plz, :string
    add_column :bathrooms, :city, :string
  end
end
