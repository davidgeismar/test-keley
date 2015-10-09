class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories, through: :categories_product
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
  validates :price,               presence: { message: "Merci d'indiquer le prix du produit" }
  validates :name,                presence: { message: "Merci d'indiquer le nom du produit" }
  validates :weight,              presence: { message: "Merci d'indiquer le poids du produit" }
  validates :description,         presence: { message: "Merci d'écrire une description du produit " }
end
