class Donation < ApplicationRecord
  belongs_to :user
  monetize :amount_cents
  has_many :orga_donas, dependent: :destroy
end
