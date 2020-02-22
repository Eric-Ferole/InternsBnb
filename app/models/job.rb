class Job < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy

  validates :description, presence: true
  validates :category, length: { maximum: 50 }
  validates :duration, inclusion: { in: ["Less than 3 months", "3 months",
                                  "3-6 months", "6 months", "More than 6 months"] }
  validates :name, presence: true
end
