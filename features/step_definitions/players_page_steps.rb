Given(/^I am on the players page$/) do
  visit '/players'
end

Then(/^I should see a list of all players$/) do
  first_player = Player.new(firstname: "PsychoBill")
  first_player.save
  expect(Player.count).to eq 1
  visit current_path
  expect(page).to have_content "PsychoBill"
end

Then(/^A link to add a new player$/) do
  expect(page).to have_link "Add New Badders Player"
end

Given(/^I click "(.*?)"$/) do |button|
  click_on button
end

Then(/^I should see the add new player form$/) do
  expect(page).to have_content "Create New Badders Demon" 
end

Then(/^I fill out and submit the form$/) do
  fill_in "First Name", with: "Satan"
  fill_in "Last Name", with: "Is-misunderstood"
  fill_in "Nickname", with: "Dolly"
  click_button "Create Player"
end

Then(/^A new player should be created$/) do
  expect(Player.count).to eq 1
  expect(Player.first.firstname).to eq "Satan"
end

Then(/^I click 'Edit Player'$/) do
  click_button 'Edit Player'
  expect(page).to have_content "Satan"
end

Then(/^I update and save the player information$/) do
  fill_in "Last Name", with: "Is a fine fellow"
  click_button "Update Player"
end

Then(/^The new player information should be saved$/) do
  expect(Player.first.lastname).to eq "Is a fine fellow"
end