module ApplicationHelper

  def page_title
    page_title_prefix.empty? ? "Beer4Me" : "#{page_title_prefix} - Beer4Me"
  end

  def current_controller_name
    controller.class.name.sub('::','').underscore
  end

end
