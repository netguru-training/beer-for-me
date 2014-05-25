class Chef::BaseController < ApplicationController

  helper_method :status_update_path

  def status_update_path(order)
    chef_order_path(order)
  end

end
