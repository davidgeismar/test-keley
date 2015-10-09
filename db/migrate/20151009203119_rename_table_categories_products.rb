class RenameTableCategoriesProducts < ActiveRecord::Migration
  def self.up
    rename_table :categories_products, :category_products
  end

 def self.down
    rename_table :category_products, :categories_products
 end
end
