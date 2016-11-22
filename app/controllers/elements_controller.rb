class ElementsController < ApplicationController
  layout "sub_layout"

  def lists
    render "styleguide/elements/lists"
  end

  def table
    render "styleguide/elements/table"
  end
end
