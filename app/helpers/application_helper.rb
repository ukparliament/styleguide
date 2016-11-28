module ApplicationHelper
  def render_source args={}
    # Character encoding for code block
    @html_encoder ||= HTMLEntities.new
    raw(@html_encoder.encode(render args))
  end

  def active_class(path)
    # Add an 'active' class to our navigation
    current_page?(path) ? "active" : ""
  end

end
