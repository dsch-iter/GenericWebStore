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

  def submit
    click_button('Go')
  end
end

