
Given /^I enter "(.*?)" in the search field$/ do |query|
  mySearchBar.search(query)
end

When /^I click the Go button/ do 
  mySearchBar.submit()
end

Then /^the title "(.*?)" should be displayed\.$/ do |arg1|
  found = myResult.verify(arg1)
  # ask('arg1 '+ arg1)
  if !found
    raise("nooooo")
  end  
end