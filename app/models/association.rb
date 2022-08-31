class Association < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :sub_categories
  has_many :events
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
