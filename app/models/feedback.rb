class Feedback < ApplicationRecord
  belongs_to :hotel
  belongs_to :user

  validates :placement, inclusion: 1..5
  validates :cleanliness, inclusion: 1..5
  validates :communication, inclusion: 1..5

  scope :persisted, ->(hotel_id) {
    where(hotel_id: hotel_id)
  }
end
