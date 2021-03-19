class Product < ApplicationRecord
  before_save :titleize_album

  validates :name, presence: true
  validates :cost, presence: true,
    :numericality => { :greater_than_or_equal_to => 0 }
  validates :coo, presence: true

  has_many :reviews, dependent: :destroy

  private
  def titleize_album; self.name = self.name.titleize end;
end
