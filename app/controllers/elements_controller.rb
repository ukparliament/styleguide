class ElementsController < ApplicationController
  layout "sub_layout"

  def forms
    render template: "styleguide/elements/forms"
  end

  def lists
    render template: "styleguide/elements/lists"
  end

  def table
    render template: "styleguide/elements/table"
  end
end
