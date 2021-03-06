
Given /^I enter "(.*?)" in the search field$/ do |query|
  @homePage.search(query)
end

When /^I click the Go button/ do 
  @myResultPage = @homePage.submit
end

Then /^the title "(.*?)" should be displayed\.$/ do |arg1|  
  found = @myResultPage.verifyResult(0, arg1)
  if !found
    raise("Anchor text does not match")
  end  
end