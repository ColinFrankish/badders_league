Given(/^I am on the matches page$/) do
  visit "/matches"
end

Then(/^I should see the new match form$/) do
  expect(page).to have_content "Create New Match"
end

Then(/^A link back to the matches page$/) do
  click_link "View All Matches"
  expect(page).to have_content "Game on"
end

Given(/^I am on the new match page$/) do
  visit "/matches/new"
end

Given(/^I see options to create a singles or doubles match$/) do
  expect(page).to have_content "Create Singles Match" and "Create Doubles Match"
end

