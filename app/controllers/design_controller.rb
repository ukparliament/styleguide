class DesignController < ApplicationController
  layout "sub_layout"

  @@view_path = "styleguide/design/"

  def colours
    render template: @@view_path + "colours"
  end

  def typography
    render template: @@view_path + "typography"
  end
end
