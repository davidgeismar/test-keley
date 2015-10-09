class Category < ActiveRecord::Base
   has_and_belongs_to_many :categories, through: :categories_product
   validates :name,                presence: { message: "Merci d'indiquer le nom de la catégorie" }
end
