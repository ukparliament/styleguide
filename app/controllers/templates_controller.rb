class TemplatesController < ApplicationController
  layout "sub_layout"

  @@view_path = "styleguide/templates/"

  def member_profile_hoc
    render template: @@view_path + "member_profile_hoc"
  end

  def member_profile_hol
    render template: @@view_path + "member_profile_hol"
  end
end
