class Chef::OrdersController < ApplicationController

  expose(:orders) { Order.pending }
  expose(:order)

  def index
  end

  def update
    order.update_attribute(:status, "ready")
    render :index
  end

end