class Dashboard::OrdersController < Dashboard::BaseController
  expose_decorated(:orders, decorator: Dashboard::OrderDecorator) { Order.noncompleted }
  expose_decorated(:order, decorator: Dashboard::OrderDecorator)

  def index
  end

  def update
    if order.update_attribute(:status, "COMPLETED")
      flash[:notice] = "Order number #{order.number} marked as completed"
    else
      flash[:alert] = "Unable to marked order number #{order.number} as completed"
    end
    redirect_to action: :index
  end

end
