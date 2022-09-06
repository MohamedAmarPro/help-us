class Organization < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :events, dependent: :destroy
  has_one_attached :photo
  belongs_to :sub_category

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
