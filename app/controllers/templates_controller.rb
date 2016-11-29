class TemplatesController < ApplicationController
  layout "sub_layout"

  def member_profile_hoc
    render template: "styleguide/templates/member_profile_hoc"
  end

  def member_profile_hol
    render template: "styleguide/templates/member_profile_hol"
  end
end
