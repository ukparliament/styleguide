class DesignController < ApplicationController
  layout "sub_layout"

  def colours
    render "styleguide/design/colours"
  end

  def typography
    render "styleguide/design/typography"
  end
end
