class Hotel < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
end
