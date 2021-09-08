class User < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
   validates :name, length: { minimum: 2 }

  has_many :attendees
  has_many :trips
  has_many :locations
  has_many :checklists
end
