class Job < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy

  validates :description, length: { maximum: 500 }
  validates :category, inclusion: { in: %w(Full-stack Developer, Web designer, Front-end developer, Back-end developer, UX/UI) }
  validates :duration, inclusion: { in: %w(Full-stack Developer, Web designer, Front-end developer, Back-end developer, UX/UI) }
  validates :name, presence: true
end
