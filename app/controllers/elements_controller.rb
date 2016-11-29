class ElementsController < ApplicationController
  layout "sub_layout"

  def lists
    render template: "styleguide/elements/lists"
  end

  def table
    render template: "styleguide/elements/table"
  end
end
