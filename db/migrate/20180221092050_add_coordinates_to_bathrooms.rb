class AddCoordinatesToBathrooms < ActiveRecord::Migration[5.1]
  def change
    add_column :bathrooms, :latitude, :float
    add_column :bathrooms, :longitude, :float
  end
end
