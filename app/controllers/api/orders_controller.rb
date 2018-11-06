class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create
    carted_product = CartedProduct.where(status: 'carted', user_id: current_user.id)
    carted_product.each do |product|
      
    end



    # product = carted_product.find_by(id: params[:product_id])
    # price = product.price
    # calculated_subtotal = params[:quantity].to_i * price
    # calculated_tax = calculated_subtotal * 0.09
    # calculated_total = calculated_subtotal + calculated_tax
    # @order = Order.new(
    # user_id: current_user.id,
    # subtotal: ,
    # tax: ,
    # total: ,
    # )
    @order.save
    render "order.json.jbuilder"
  end
end
