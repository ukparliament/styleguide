class PagesController < ApplicationController
  include HighVoltage::StaticPage
  protect_from_forgery with: :exception

  def dev
    render layout: "application"
  end
end
