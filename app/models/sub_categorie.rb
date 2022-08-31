class SubCategorie < ApplicationRecord
  has_many :associations, dependent: :destroy
  belongs_to :categories
end
