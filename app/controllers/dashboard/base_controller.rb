class Dashboard::BaseController < ApplicationController

  helper_method :status_update_path

  def status_update_path(order)
    dashboard_order_path(order)
  end


end
