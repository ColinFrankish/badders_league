Given(/^I am on the landing page$/) do
  visit '/'
end

Then(/^I should see 'Badders League'$/) do
  expect(page).to have_content 'Badders League'
end

Then(/^I should see the 'login' button$/) do
  expect(page).to have_content 'Login'
end

Then(/^I should see the 'Players' button$/) do
  expect(page).to have_content 'Players'
end

Given(/^I click the 'Players' button$/) do
  click_link 'Players'
end

Then(/^I should go to the list of players$/) do
  expect(page).to have_content 'All Players'
end