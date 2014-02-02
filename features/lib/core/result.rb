require 'rubygems'
require 'capybara'
require 'capybara/dsl'

class Result
  include Capybara::DSL
  def initialize(index)
    # div#result_0 h3 a span
    @loc = "div#result_#{index} h3 a span";

  end
  def verifyText(result)
    # print "LOC #{@loc}"
    val = find(:css, @loc).text
    result == val
  end
end