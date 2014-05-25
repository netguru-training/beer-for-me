class Chef::OrderDecorator < Draper::Decorator
  delegate_all

  def hide_items?
    false
  end
  
end
