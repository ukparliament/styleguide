require 'rails_helper'
require 'selenium-webdriver'
require_relative '../pageobject/abstract_page'
require_relative '../pageobject/components_page'
require_relative '../pageobject/design_page'
require_relative '../pageobject/elements_page'
require_relative '../pageobject/templates_page'

RSpec.describe "Styleguide Selenium test" do

  # app = nil
  #
  # before(:each) do
  #   app = AbstractPage.new(Selenium::WebDriver.for :firefox)
  # end
  #
  # after(:each) do
  #   app.quit
  # end
  #
  # it "navigate sections" do
  #   app
  #     .navigateToAppRoot
  #     .navigateToDesign
  #     .navigateToAppRoot
  #     .navigateToElements
  #     .navigateToComponents
  #     .navigateToTemplates
  # end

end
