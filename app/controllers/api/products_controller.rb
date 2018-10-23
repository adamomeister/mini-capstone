class Api::ProductsController < ApplicationController
  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end
  def index
    search_term = params[:user_search_input]
    @products = Product.where('name LIKE ?', "%#{search_term}%")
    @products.order!(:id => :DESC)
    render "index.json.jbuilder"
  end
  def create
    @product = Product.new(name: "Baby Goat", price: 5000, image_url: "some url", description: "cute and great for yoga")
    @product.save
    render "show.json.jbuilder"
  end
end
