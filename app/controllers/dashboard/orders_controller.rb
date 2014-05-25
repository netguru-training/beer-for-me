class Dashboard::OrdersController < Dashboard::BaseController
  expose(:orders) { Order.noncompleted }
  expose(:order)

  def index
  end

  def update
    order.update_attribute(:status, "COMPLETED")
    redirect_to dashboard_path
  end

end
