class Dashboard::OrderDecorator < Draper::Decorator
  delegate_all
  
  def hide_items?
    true
  end

end
