class Waiter::OrdersController < Waiter::BaseController
  expose(:waiter_orders) { Order.new }
  expose(:order_item) { OrderItem.new }
  expose(:positions) { Position.all }
  expose(:orders) { Order.all }

  def new
  end

  def create
    order = Order.create
    order_items = params[:order_items]

    order_items.each do |oi|
      position = Position.find(oi['id'])
      order.order_items.create(quantity: oi['quantity'], position: position)
    end

    flash[:notice] = "Waiter created order number #{order.number}"

    redirect_to new_waiter_order_path
  end

end
