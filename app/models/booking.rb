class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bathroom
  belongs_to :user, through: :bathroom
end
