module Waiter
  class OrdersController < ApplicationController
    expose(:order_item, attributes: :post_params)
    expose(:positions) { Position.all }

    def new

    end

    def create
    end

    private

    def orders_params
      params.require(:order_item).permit()
    end
  end
end
