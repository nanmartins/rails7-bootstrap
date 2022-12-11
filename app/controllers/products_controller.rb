class ProductsController < ApplicationController

  def method_name

  end

  def create
    # if selected_all_answers
      Product.create(
        name: params["product"]["name"],
        category: params["product"]["category"],
        price: params["product"]["price"],
        image: params["product"]['image'],
        size: params["product"]['size'],
        color: params["product"]['color'],
        description: params["product"]['description'],
      )

      redirect_to product_path(id: Product.all.last.id ), notice: "Respostas salvas com sucesso"
      # end

    # else
      # redirect_to questions_path, notice: "Por favor, selecione uma alternativa para cada questão."
    # end
  end

  def index
    @products = Product.all
    @colors_available = @products.map {|product| product.color}.uniq
    @sizes_available = @products.map {|product| product.size}.uniq
    @categories_available = @products.map {|product| product.category}.uniq
    @prices_available = @products.map {|product| product.price}.uniq
  end

  def show
    @product = Product.find(params[:id])
  end

  # def products_params
  #   params.require(:products).permit(:name, :price, :image, :size, :color, :description, :category)
  # end

end
