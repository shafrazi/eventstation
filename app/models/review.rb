class Review < ApplicationRecord
  after_create :update_business_rating
  belongs_to :user
  belongs_to :business

  private

  def update_business_rating
    self.business.calculate_rating
    self.business.rating = self.business.calculate_rating
    self.business.save!
  end
end
