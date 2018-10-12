class Api::ProductsController < ApplicationController
  def every_product
    @products = "hello"
    render "all_available_products.json.jbuilder"
  end
end
