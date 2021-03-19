class Product < ApplicationRecord
  before_save :titleize_album

  has_many :reviews

  private
  def titleize_album; self.name = self.name.titleize end;
end
