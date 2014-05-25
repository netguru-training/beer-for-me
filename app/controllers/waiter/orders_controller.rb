module Waiter
  class OrdersController < ApplicationController
    expose(:waiter_orders) { Order.new }
    expose(:order_item) { OrderItem.new }
    expose(:positions) { Position.all }
    expose(:orders) { Order.all }

    def new
    end

    def create
      # binding.pry

      order = Order.create
      order_items = params[:order_items]

      order_items.each do |oi|
        quantity = oi['quantity']
        position = Position.find(oi['id'])
        
        order.order_items.create(quantity: quantity, position: position) if  quantity.to_i > 0
      end

      flash[:notice] = if order.order_items.empty?
                        order.destroy
                        "You cannot add empty order"
                      else
                        "Waiter created order number #{order.number}"
                      end

      redirect_to new_waiter_order_path
    end

  end
end
