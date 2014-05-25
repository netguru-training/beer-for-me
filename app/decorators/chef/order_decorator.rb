class Chef::OrderDecorator < Draper::Decorator
  delegate_all

  def show_status_change_button?
    true if self.status == 'PENDING'
  end

  def hide_items?
    false
  end

  def status_update_path
    h.chef_order_path(object)
  end
  
end
