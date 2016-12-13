class ComponentsController < ApplicationController
  layout "sub_layout"

  @@view_path = "styleguide/components/"

  def a_z
    render template: @@view_path + "a-z"
  end

  def alert
    render template: @@view_path + "alert"
  end

  def badges
    render template: @@view_path + "badges"
  end

  def breadcrumb
    render template: @@view_path + "breadcrumb"
  end

  def footer
    render template: @@view_path + "footer"
  end

  def header
    render template: @@view_path + "header"
  end

  def pagination
    render template: @@view_path + "pagination"
  end

  def panel
    render template: @@view_path + "panel"
  end
end
