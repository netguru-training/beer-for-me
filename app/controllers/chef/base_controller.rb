class Chef::BaseController < ApplicationController

  helper_method :hide_order_items, :status_update_path

  def hide_order_items
    false
  end

  def status_update_path(order)
    chef_order_path(order)
  end

end
