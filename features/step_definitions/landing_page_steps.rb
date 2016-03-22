Given(/^I am on the landing page$/) do
  visit '/'
end

Then(/^I should see 'Badders League'$/) do
  expect(page).to have_content 'Badders League'
end