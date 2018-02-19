class CreateBathrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :bathrooms do |t|
      t.string :address
      t.text :description
      t.integer :price
      t.boolean :handicapped
      t.string :style
      t.integer :toilet_paper
      t.boolean :wipes
      t.boolean :baby
      t.boolean :bidet
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
