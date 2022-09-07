class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :user_events, dependent: :destroy
  belongs_to :organization
  has_many_attached :photos
end
