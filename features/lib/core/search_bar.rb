require 'rubygems'
require 'capybara'
require 'capybara/dsl'

class SearchBar
  include Capybara::DSL
  def initialize(id)
    @id = id
  end

  def search(query)
    fill_in(@id, :with => query)
  end

#---
# This triggers a new Result Page
#---
  def submit
    click_button('Go')
    ResultPage.new
  end
end

