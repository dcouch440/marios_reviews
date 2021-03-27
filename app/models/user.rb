class User < ApplicationRecord

  has_many :reviews, dependent: :destroy

  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
