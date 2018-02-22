class Review < ApplicationRecord
  belongs_to :bathroom


  validates :rating, inclusion: {in: (0..5).to_a}



end
