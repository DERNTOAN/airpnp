class AddTitleToBathrooms < ActiveRecord::Migration[5.1]
  def change
    add_column :bathrooms, :title, :string
  end
end
