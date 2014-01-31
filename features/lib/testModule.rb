require 'rubygems'
require 'capybara'
require 'capybara/dsl'
# require 'capybara/cucumber'

include Capybara::DSL

Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.amazon.com'


