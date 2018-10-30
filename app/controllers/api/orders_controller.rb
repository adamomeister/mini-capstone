class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create
    @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    # subtotal: ,
    # tax: ,
    # total: ,
    )
    @order.save
    render "order.json.jbuilder"
  end
end
