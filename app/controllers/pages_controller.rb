class PagesController < ApplicationController
  include HighVoltage::StaticPage
  protect_from_forgery with: :exception
  def components
    render "pages/components/header"
  end
  def design
    # render "{pathOfViewsFile}" layout: "{layoutTemplate}"
    render "pages/design/colours"
  end
  def elements
    render "pages/elements/typography"
  end
end
