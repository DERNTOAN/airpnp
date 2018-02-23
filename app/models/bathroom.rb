class Bathroom < ApplicationRecord
  include Filterable

  include PgSearch
  pg_search_scope :search_for_index,
    against: [ :price, :handicapped, :style, :toilet_paper, :wipes, :baby, :bidet],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }


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

  def average
    sum = []
    return 0 if self.reviews.empty?
    self.reviews.each do |review|
      sum << review.rating
    end

    average = ((sum.sum).fdiv(sum.count))
    # raise
    return average
  end


end








