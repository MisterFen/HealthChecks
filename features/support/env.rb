#encoding: UTF-8

require 'cucumber'
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'rest-client'


$screenshot_counter = 0
#Capybara.save_and_open_page = File.expand_path(File.join(File.dirname(__FILE__), "../../screenshots/"))

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium

Capybara.app_host = "https://status.iesohealth.com"

Capybara.run_server = false
Capybara.default_selector = :css
Capybara.default_max_wait_time = 10  #default wait time for ajax
Capybara.ignore_hidden_elements = false
Capybara.exact = true

World(Capybara::DSL)

begin
  # Capybara.current_session.driver.browser.manage.window.resize_to(1280, 800)
  Capybara.page.driver.browser.manage.window.maximize
rescue Exception => e
  p "Unable to maximise window!!!"
  p e.to_s
end