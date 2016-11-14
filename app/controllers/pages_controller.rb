class PagesController < ApplicationController
  include HighVoltage::StaticPage
  protect_from_forgery with: :exception
  def design
    # render "{pathOfViewsFile}" layout: "{layoutTemplate}"
  end
  def elements
    render "pages/elements/typography"
  end
  def components
    render "pages/components/header"
  end
end
