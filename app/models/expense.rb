class Expense < ApplicationRecord

  belongs_to :user, :optional => true
end
