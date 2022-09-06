class OrgaDona < ApplicationRecord
  belongs_to :donation
  belongs_to :organization
  monetize :price_cents
end
