class DashboardController < ApplicationController
  expose(:orders) { Order.noncompleted }

  def index
  end

end