class PagesController < ApplicationController
  include HighVoltage::StaticPage
  protect_from_forgery with: :exception
  # def controller
    # render "{pathOfViewsFile}" layout: "{layoutTemplate}"
  # end
  def components
    render "pages/components/header"
  end
  def design
    render "pages/design/colours"
  end
  def elements
    render "pages/elements/table"
  end
  def templates
    render "pages/templates/member_profile_hoc"
  end
end
