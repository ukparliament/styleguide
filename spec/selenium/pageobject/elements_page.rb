require 'rails_helper'
require 'selenium-webdriver'
require_relative '../pageobject/abstract_page'

class ElementsPage < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def navigateToForms
    @@driver.find_element(:link_text, "Forms").click
  end

  def navigateToLists
    @@driver.find_element(:link_text, "Lists").click
  end

  def navigateToMedia
    @@driver.find_element(:link_text, "Media").click
  end

  def navigateToTable
    @@driver.find_element(:link_text, "Table").click
  end

end
