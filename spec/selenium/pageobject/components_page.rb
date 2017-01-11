require 'rails_helper'
require 'selenium-webdriver'
require_relative '../pageobject/abstract_page'

class ComponentsPage < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def navigateToAZ
    @@driver.find_element(:link_text, "A - Z").click
  end

  def navigateToAlerts
    @@driver.find_element(:link_text, "Alerts").click
  end

  def navigateToBadges
    @@driver.find_element(:link_text, "Badges").click
  end

  def navigateToBreadcrumbs
    @@driver.find_element(:link_text, "Breadcrumbs").click
  end

  def navigateToFooter
    @@driver.find_element(:link_text, "Footer").click
  end

  def navigateToHeader
    @@driver.find_element(:link_text, "Header").click
  end

  def navigateToPagination
    @@driver.find_element(:link_text, "Pagination").click
  end

end
