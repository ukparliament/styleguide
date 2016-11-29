class DesignController < ApplicationController
  layout "sub_layout"

  def colours
    render template: "styleguide/design/colours"
  end

  def typography
    render template: "styleguide/design/typography"
  end
end
