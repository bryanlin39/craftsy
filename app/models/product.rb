class Product < ApplicationRecord
  validates :name, :description, :price, :presence => true

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  has_many :reviews
  has_many :users, through: :reviews
end
