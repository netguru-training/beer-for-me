class DashboardController < ApplicationController
  expose(:orders) { Order.noncompleted }

  def index
  end

  def mark_order_as_completed
    @order = Order.find(params[:id])
    @order.status = 'COMPLETED'

    if @order.save
      flash[:notice] = "Order number #{@order.number} marked as completed"
    else
      flash[:alert] = "Unable to marked order number #{@order.number} as completed"
    end

    redirect_to dashboard_path
  end

end