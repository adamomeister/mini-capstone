class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: 'carted'
      )
    @carted_product.save
    p 'HERE ARE THE ERRORS!!!!!!!!!'
    p @carted_product.errors.full_messages
    render "show.json.jbuilder"
  end

  def index
    @carted_product = CartedProduct.where(status: 'carted', user_id: current_user.id)
    render "index.json.jbuilder"
  end
end
