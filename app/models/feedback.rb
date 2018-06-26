class Feedback < ApplicationRecord
  belongs_to :hotel

  validates :placement, inclusion: 1..5
  validates :cleanliness, inclusion: 1..5
  validates :communication, inclusion: 1..5
end
