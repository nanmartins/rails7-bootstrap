class ProductsController < ApplicationController

  def index
    @products = Product.all
    # @categories = @products.category_id
  end

  def show
    @product = Product.find(params[:id])
  end

  # def products_params
    # params.require(:products).permit(:name, :price, :image, :size, :color, :description, :category_id)
  # end

end
