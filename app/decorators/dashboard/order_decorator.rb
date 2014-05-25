class Dashboard::OrderDecorator < Draper::Decorator
  delegate_all
  
   def show_status_change_button?
    true if self.status == 'READY'
  end

  def hide_items?
    true
  end

  def status_update_path
    h.dashboard_order_path(object)
  end
  

end
