require 'rubygems'
require 'capybara'
require 'capybara/dsl'

class Result
  include Capybara::DSL
  def verify(result)
    val = find(:css, 'div#result_0 h3 a span').text
    result == val
  end
end