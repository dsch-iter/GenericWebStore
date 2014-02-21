require File.join(File.dirname(__FILE__), '..', 'lib', 'core', 'search_bar')
require File.join(File.dirname(__FILE__), '..', 'lib', 'core', 'result')
require File.join(File.dirname(__FILE__), '..', 'lib', 'pages', 'home_page')

Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.amazon.com'
Capybara.run_server = false

Before do
  @homePage = HomePage.new(Capybara.app_host)
end