require 'capybara/cucumber'
require 'selenium/webdriver'
require 'capybara'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end
