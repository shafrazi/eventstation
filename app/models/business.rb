class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
  validates :type, :name, presence: true

  def calculate_rating
    if self.reviews.any?
      total = 0
      self.reviews.each do |review|
        total += review.rating
      end
      final_rating = total / self.reviews.count
    else
      "Not enough reviews received."
    end
  end
end
