class Business < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
  validates :type, :name, presence: true
end
