class User < ApplicationRecord
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :donations, dependent: :destroy
  has_many :user_events, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :validate_age

  private

  def validate_age
    if birth_date.present? && birth_date > 18.years.ago.to_date
      errors.add(:birth_date, 'You should be over 18 years old.')
    end
  end
end
