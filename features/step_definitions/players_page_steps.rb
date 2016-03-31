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