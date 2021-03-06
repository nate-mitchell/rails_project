class Student < ApplicationRecord
  has_many :evaluations #dependent :destroy

  before_save {self.email = email.downcase }
  validates :buck_id, presence: true
  validates :fname, presence: true
  validates :lname, presence: true
  validates :team_id, presence: false
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }, confirmation: true, on: :create
end
