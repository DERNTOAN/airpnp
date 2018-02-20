class Bathroom < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :address, presence: true
  validates :title, presence: true
  validates :plz, presence: true
  validates :city, presence: true
  validates :photo, presence: true
  validates :price, presence: true

  validates :description, presence: true
  validates :style, inclusion: { in: ["western", "turkish", "japanese"] }
  validates :toilet_paper, inclusion: { in: [ 1, 2, 3, 4, 5 ] }
end
