class Chef::BaseController < ApplicationController

  helper_method :hide_order_items

  def hide_order_items
    false
  end

end
