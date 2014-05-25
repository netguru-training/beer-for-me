class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  helper_method :show_button_for?

  def show_button_for?(order)
    return case [order.status, controller]
    when ['READY','dashboard'] then true
    when ['PENDING', 'chef'] then true
    else false
    end
  end

  private

  def controller
    params[:controller].split('/').first
  end

end
