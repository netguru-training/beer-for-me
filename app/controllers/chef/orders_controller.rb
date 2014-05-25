class Chef::OrdersController < Chef::BaseController

  expose(:orders) { Order.pending }
  expose(:order)

  def index
  end

  def update
    order.update_attribute(:status, "ready")
    render :index
  end

end
