class ElementsController < ApplicationController
  layout "sub_layout"

  @@view_path = "styleguide/elements/"

  def forms
    render template: @@view_path + "forms"
  end

  def lists
    render template: @@view_path + "lists"
  end

  def media
    render template: @@view_path + "media"
  end

  def table
    render template: @@view_path + "table"
  end
end
