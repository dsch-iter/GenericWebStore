require 'rubygems'
require 'capybara'
require 'capybara/dsl'
#require 'capybara/cucumber'

#include Capybara::DSL

Given /^I enter "(.*?)" in the search field$/ do |query|
  visit('/')
  fill_in('twotabsearchtextbox', :with => query)
end

When /^I click the Go button/ do 
  click_button('Go')
  #sleep 8
  # ask('does that look right?')
  
end

Then /^the title "(.*?)" should be displayed\.$/ do |arg1|
val = find(:css, 'div#result_0 h3 a span').text  
ask('val: '+ val)
# spending
end