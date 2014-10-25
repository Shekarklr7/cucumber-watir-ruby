Given /^I am on the (.+) Home Page$/ do |site|
  @site = site.downcase
  visit @site, :home_page
end

When(/^I search for "(.*?)"$/) do |term|
  on @site, :home_page do |page|
    page.search_for term
  end
end

Then(/^I should see the "(.*?)" from search results$/) do |first_page|
  on @site, :home_page do |page|
    page.is_search_result_in_first
  end
end
