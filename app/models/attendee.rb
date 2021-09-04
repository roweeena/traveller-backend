class Attendee < ApplicationRecord
  belongs_to :event, :optional => true
  belongs_to :trip, :optional => true
end
