class SubCategory < ApplicationRecord
  has_many :organizations, dependent: :destroy
  belongs_to :category
end
