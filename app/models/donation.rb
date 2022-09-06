class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  monetize :amount_cents
end
