class SubCategorie < ApplicationRecord
  has_many :organizations, dependent: :destroy
  belongs_to :categories
end
