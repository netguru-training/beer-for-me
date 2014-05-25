class Dashboard::OrdersController < Dashboard::BaseController
  expose(:orders) { Order.noncompleted }
  expose(:order)

  def index
  end

  def update
    if order.update_attribute(:status, "COMPLETED")
      flash[:notice] = "Order number #{@order.number} marked as completed"
    else
      flash[:alert] = "Unable to marked order number #{@order.number} as completed"
    end
    redirect_to dashboard_path
  end

end
