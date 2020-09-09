class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:username]

  validates :last_name, presence: true, length: { maximum: 250 }
  validates :first_name, presence: true, length: { maximum: 250 }
  validates :username, presence: true, length: { in: 3..250 }
  validates :password, confirmation: true, length: { in: 6..30 }
end
