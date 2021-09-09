class Trip < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :checklists
end
