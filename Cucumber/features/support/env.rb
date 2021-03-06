require 'rspec'
require "capybara/cucumber"
require "selenium-webdriver"
require "capybara/dsl"


Capybara.default_max_wait_time = 60
Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :chrome
