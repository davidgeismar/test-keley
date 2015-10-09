class ProductsController < ApplicationController
  before_action :set_product,  only: [:show]
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def show
  end

  private

  def product_params
    params.require(:product).permit(
      :name,
      :price,
      :description,
      :weight,
      :picture,
      :picture1,
      :picture2,
      :picture3,
      :category_ids

    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
