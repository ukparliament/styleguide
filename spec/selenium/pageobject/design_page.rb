require 'rails_helper'
require 'selenium-webdriver'
require_relative '../pageobject/abstract_page'

class DesignPage < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def navigateToColours
    @@driver.find_element(:link_text, "Colours").click
  end

  def navigateToTypography
    @@driver.find_element(:link_text, "Typography").click
  end

end
