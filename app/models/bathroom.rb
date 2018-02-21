class Bathroom < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  :complete_address
  belongs_to :user
  has_many :bookings

  validates :address, presence: true
  validates :title, presence: true
  validates :plz, presence: true
  validates :city, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :user, presence: :true
  validates :description, presence: true

  geocoded_by :complete_address
  after_validation :geocode, if: :will_save_change_to_complete_address?

  def complete_address
    address + " " + plz + " " + city
  end
end
