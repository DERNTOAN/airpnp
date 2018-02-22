class Bathroom < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_many :reviews

  validates :address, presence: true
  validates :title, presence: true
  validates :plz, presence: true
  validates :city, presence: true
  validates :photo, presence: true
  validates :price, presence: true
  validates :user, presence: :true
  validates :description, presence: true

  geocoded_by :complete_address
  after_validation :geocode

  def complete_address
    address + " " + plz + " " + city
  end

  def self.class_string(b)
    string = "data-tp=#{b.toilet_paper} data-price=#{b.price} data-baby=#{b.baby} data-bidet=#{b.bidet} data-handicapped=#{b.handicapped} data-style=#{b.style}"
    return string
  end
end
