class Chef::OrdersController < Chef::BaseController

  expose(:orders) { Order.pending }
  expose(:order)

  def index
  end

  def update
    if order.update_attribute(:status, "READY")
      flash[:notice] = "Order number #{order.number} marked as ready"
    else
      flash[:alert] = "Unable to marked order number #{order.number} as ready"
    end
    redirect_to action: :index
  end

end
