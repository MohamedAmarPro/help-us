class Event < ApplicationRecord
  has_many :user_events, dependent: :destroy
  belongs_to :organization
end
