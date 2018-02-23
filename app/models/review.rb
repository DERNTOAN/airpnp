class Review < ApplicationRecord
  belongs_to :bathroom
  belongs_to :user

  validates :rating, inclusion: {in: (0..5).to_a}



end
