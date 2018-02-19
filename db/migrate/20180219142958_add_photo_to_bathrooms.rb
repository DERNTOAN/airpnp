class AddPhotoToBathrooms < ActiveRecord::Migration[5.1]
  def change
    add_column :bathrooms, :photo, :string
  end
end
