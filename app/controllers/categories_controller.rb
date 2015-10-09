class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def index
    @categories = Category.all
  end

  def show
  end

  private

  def category_params
    params.require(:category).permit(
      :name,
    )
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
