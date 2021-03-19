class Product < ApplicationRecord
  before_save :titleize_album

  validates :name, presence: true
  validates :cost, presence: true
  validates :coo, presence: true

  has_many :reviews

  private
  def titleize_album; self.name = self.name.titleize end;
end
