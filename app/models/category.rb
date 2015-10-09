class Category < ActiveRecord::Base
  has_many :category_products
  has_many :products,         through: :category_products
  validates :name,                presence: { message: "Merci d'indiquer le nom de la catégorie" }
end
