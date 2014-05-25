module ApplicationHelper

def current_controller_name
  controller.class.name.sub('::','').underscore
end

end
