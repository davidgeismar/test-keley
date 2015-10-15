class Product < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search,
  :against => [:name],
  :using => {:tsearch => {:prefix => true} }
  has_many :category_products
  has_many :categories, through: :category_products
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  has_attached_file :picture1,
    styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture1,
    content_type: /\Aimage\/.*\z/
  has_attached_file :picture2,
    styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture2,
    content_type: /\Aimage\/.*\z/
  has_attached_file :picture3,
    styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture3,
    content_type: /\Aimage\/.*\z/

  validates :price,               presence: { message: "Merci d'indiquer le prix du produit" }
  validates :name,                presence: { message: "Merci d'indiquer le nom du produit" }
  validates :weight,              presence: { message: "Merci d'indiquer le poids du produit" }
  validates :description,         presence: { message: "Merci d'écrire une description du produit " }
end
