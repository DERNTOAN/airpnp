class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bathroom

  # validates :user, presence:true
  # validates :bathroom, presence:true

end
