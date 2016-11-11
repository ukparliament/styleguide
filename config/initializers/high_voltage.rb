HighVoltage.configure do |config|
  # remove the directory pages from the URL path and serve up routes from the root of the domain path
  config.route_drawer = HighVoltage::RouteDrawers::Root
  # Defaults all static pages to th 'styleguide' layout'
  config.layout = 'styleguide'
end
