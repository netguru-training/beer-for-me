class Chef::OrdersController < Chef::BaseController

  expose(:orders) { Order.pending }
  expose(:order)

  def index
  end

  def update
    order.update_attribute(:status, "READY")
    flash[:notice] = "Chief set order number #{order.number} to ready."
    render :index
  end

end
