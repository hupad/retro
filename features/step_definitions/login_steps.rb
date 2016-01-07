When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
   fill_in field, with: value
end

When(/^I press "(.*?)"$/) do |button|
   click_button button
end

Then(/^I should see "(.*?)"$/) do |message|
  assert page.has_content?(message)
end