class DashboardController < ApplicationController
  expose(:orders) { Order.noncompleted }

  def index
  end

  def mark_order_as_completed
    @order = Order.find(params[:id])
    @order.status = 'COMPLETED'
    @order.save
    redirect_to dashboard_path
  end

end