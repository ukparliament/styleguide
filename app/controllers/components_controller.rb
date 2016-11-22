class ComponentsController < ApplicationController
  layout "sub_layout"

  def breadcrumb
    render "styleguide/components/breadcrumb"
  end

  def footer
    render "styleguide/components/footer"
  end

  def header
    render "styleguide/components/header"
  end

  def panel
    render "styleguide/components/panel"
  end
end
