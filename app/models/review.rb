class Review < ApplicationRecord

  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true

  belongs_to :product

end
