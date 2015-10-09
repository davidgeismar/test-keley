class CreateTableCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products do |t|
      t.references :product, index: true
      t.references :category, index: true
    end
    add_foreign_key :categories_products, :categories
    add_foreign_key :categories_products, :products
  end
end

