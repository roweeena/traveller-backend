class Checklist < ApplicationRecord
  belongs_to :trip, :optional => true
  belongs_to :user, :optional => true
end
