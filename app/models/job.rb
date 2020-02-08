class Job < ApplicationRecord
  has_many :users, through: :requests, dependent: :destroy
  has_many :requests, dependent: :destroy
end
