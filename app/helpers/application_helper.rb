module ApplicationHelper
  def ukp_render_source args={}
    # Character encoding for code block
    @html_encoder ||= HTMLEntities.new
    raw(@html_encoder.encode(render args))
  end

  def ukp_active_class(path)
    # Add an 'active' class to our vertical navigation
    current_page?(path) ? "active" : ""
  end

  def ukp_active_menu(path)
    # Add an 'active' class to our horizontal menu base of url path
    url = request.fullpath
    url.include?(path) ?  "active" : ""
  end

end
