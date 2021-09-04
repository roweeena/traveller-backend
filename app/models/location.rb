class Location < ApplicationRecord
  has_many :trips
  belongs_to :user, :optional => true
end
