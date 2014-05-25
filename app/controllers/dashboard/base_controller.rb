class Dashboard::BaseController < ApplicationController

  helper_method :hide_order_items, :status_update_path

  def status_update_path(order)
    dashboard_order_path(order)
  end

  def hide_order_items
    true
  end


end
