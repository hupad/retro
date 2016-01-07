When(/^I select team lead as "(.*?)"$/) do |value|
  find(:css, "#user_is_team_lead").set(value)
end

When(/^I select "(.*?)"$/) do |value|
  find(:css, "#user_team_id").set(value)
end

When(/^I select team "(.*?)"$/) do |team|
  find(:css, "#user_team_id").set(team)
end

When(/^I click "(.*?)"$/) do |button_name|
	click_button button_name
end

Then(/^Redirect to new sprint retro path$/) do
  page.has_content?("Create new Retro")
end

Then(/^I should see an error message "(.*?)"$/) do |error_message|
  assert page.has_content?(error_message)
end

Then(/^I should see an error "(.*?)"$/) do |error_message|
  assert page.has_content?(error_message)
end

Then(/^Redirect to "(.*?)" and see "(.*?)"$/) do |route, content|
  visit route
  within("h1") do
  	assert page.has_content?(content)
  end
end