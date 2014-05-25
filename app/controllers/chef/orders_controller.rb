class Chef::OrdersController < ApplicationController

  expose(:orders) { Order.pending }
  expose(:order)

  def index
  end

  def update
    order.update_attribute(:status, "READY")
    render :index
  end

end
