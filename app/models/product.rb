class Product < ApplicationRecord

  before_save :titleize_album

  validates :name, presence: true

  validates :cost, presence: true,
    :numericality => { :greater_than_or_equal_to => 0 }

  validates :country_of_origin, presence: true

  has_many :reviews, dependent: :destroy

  def calculate_average
    return 0 unless reviews.size.positive?
    reviews.average(:rating).to_f.round(1)
  end

  private
  def titleize_album; self.name = self.name.titleize end;
end
