class User < ApplicationRecord
  has_secure_password

  belongs_to :profile
  has_many :permissions
  has_many :answers
  has_many :logs

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, on: :create
  validates :profile, presence: true
end
