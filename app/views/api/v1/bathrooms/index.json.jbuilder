json.array! @bathrooms do |bathroom|
  p params[:baby]
  json.extract! bathroom, :address, :description, :price, :handicapped, :style, :toilet_paper, :wipes, :latitude, :longitude
end

    # t.string "address"
    # t.text "description"
    # t.integer "price"
    # t.boolean "handicapped"
    # t.string "style"
    # t.integer "toilet_paper"
    # t.boolean "wipes"
    # t.boolean "baby"
    # t.boolean "bidet"
    # t.bigint "user_id"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.string "plz"
    # t.string "city"
    # t.string "photo"
    # t.string "title"
    # t.float "latitude"
    # t.float "longitude"
