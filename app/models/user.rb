class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jobs
  has_many :requests, dependent: :destroy
  has_one_attached :logo
  geocoded_by :street_address
  after_validation :geocode, if: :will_save_change_to_street_address?
end
