class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :businesses, dependent: :destroy
  has_many :reviews, dependent: :destroy

  def reviewed?(business)
    Review.find_by(business_id: business.id, user_id: self.id)
  end
end
