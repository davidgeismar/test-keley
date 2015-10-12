class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
    if params[:content].present? && (params[:price] == "1")
      @products = Product.search(params[:content]).order(price: :desc)
      respond_to do |format|
        format.js {}
        format.html{ render :index }
      end
    elsif params[:content].present? && (params[:weight] == "1")
      @products = Product.search(params[:content]).order(weight: :desc)
      respond_to do |format|
        format.js {}
        format.html{ render :index }
      end
    elsif params[:content].present?
      @products = Product.search(params[:content])
      # binding.pry
      respond_to do |format|
        format.js {}
        format.html{ render :index }
      end
    elsif params[:price] == "1"
      @products = Product.all.order(price: :desc)
      respond_to do |format|
        format.js {}
        format.html{ render :index }
      end
    elsif params[:weight] == "1"
      @products = Product.all.order(weight: :desc)
      # binding.pry
      respond_to do |format|
        format.js {}
        format.html{ render :index }
      end
    else
      @products = Product.all
      # binding.pry
    end
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
      :category_ids => []

    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
