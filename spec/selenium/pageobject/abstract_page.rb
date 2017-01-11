require 'rails_helper'
require 'selenium-webdriver'
require_relative '../pageobject/abstract_page'

class AbstractPage

  @@driver = nil

  def initialize (driver)
    @@driver = driver
  end

  def navigateToAppRoot
    @@driver.navigate.to "http://localhost:3000"
    return ComponentsPage.new(@@driver)
  end

  def navigateToDesign
    @@driver.find_element(:link_text, "Design").click
    return DesignPage.new(@@driver)
  end

  def navigateToElements
    @@driver.find_element(:link_text, "Elements").click
    return ElementsPage.new(@@driver)
  end

  def navigateToComponents
    @@driver.find_element(:link_text, "Components").click
    return ComponentsPage.new(@@driver)
  end

  def navigateToTemplates
    @@driver.find_element(:link_text, "Templates").click
    return TemplatesPage.new(@@driver)
  end

  def quit
    @@driver.quit
  end

end
