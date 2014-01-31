require File.join(File.dirname(__FILE__), '..', 'lib', 'searchBar')
require File.join(File.dirname(__FILE__), '..', 'lib', 'result')
Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.amazon.com'
Capybara.run_server = false