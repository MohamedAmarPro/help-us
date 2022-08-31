class SubCategory < ApplicationRecord
  has_many :associations, dependent: :destroy
  belongs_to :category
end
