class ProductsController < ApplicationController

  def index
    @products = Product.all
    @colors_available = @products.map {|product| product.color}.uniq
    @sizes_available = @products.map {|product| product.size}.uniq
    @categories_available = @products.map {|product| product.category.category_name }.uniq
    @prices_available = @products.map {|product| product.price}.uniq
  end

  def show
    @product = Product.find(params[:id])
  end

  # def products_params
  #   params.require(:products).permit(:name, :price, :image, :size, :color, :description, :category_id)
  # end

end
