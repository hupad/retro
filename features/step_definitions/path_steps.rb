Given(/^I am on the sign in page$/) do
  visit new_user_session_path 
end

Given(/^I am on sign up page$/) do
  visit new_user_registration_path
end