class Review < ApplicationRecord

  validates :author, presence: true

  validates :content_body, presence: true,
    :length => { maximum: 250 }

  validates :rating, presence: true,
    :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }

  belongs_to :product
  belongs_to :user

end
