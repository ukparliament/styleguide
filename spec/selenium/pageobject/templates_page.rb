require 'rails_helper'
require 'selenium-webdriver'
require_relative '../pageobject/abstract_page'

class TemplatesPage < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def navigateToMemberHoc
    @@driver.find_element(:link_text, "Member Profile (HoC)").click
  end

  def navigateToMemberHol
    @@driver.find_element(:link_text, "Member Profile (HoL)").click
  end

  def navigateToMemberSearch
    @@driver.find_element(:link_text, "Member Search Results").click
  end

end
