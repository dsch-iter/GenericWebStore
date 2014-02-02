require 'rubygems'
require 'capybara'
require 'capybara/dsl'

class SearchBar
      include Capybara::DSL
      def search(query)
        visit('http://www.amazon.com')
        fill_in('twotabsearchtextbox', :with => query)
      end
      def submit
        click_button('Go')
      end
end



