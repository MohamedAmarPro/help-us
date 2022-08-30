class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :association
end
