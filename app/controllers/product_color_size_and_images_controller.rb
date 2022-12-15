class ProductColorSizeAndImagesController < ApplicationController

  def home
    @products_color_size_and_images = ProductColorSizeAndImage.all
  end

end
