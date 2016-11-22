class TemplatesController < ApplicationController
  layout "sub_layout"

  def member_profile_hoc
    render "styleguide/templates/member_profile_hoc"
  end

  def member_profile_hol
    render "styleguide/templates/member_profile_hol"
  end
end
