class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :organization, presence: true, unless: -> (user){user.voluntter.present?}
  validates :voluntter, presence: true, unless: -> (user){user.organization.present?}

  has_one :organization
  has_one :volunteer
end
