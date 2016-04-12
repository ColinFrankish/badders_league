Feature: Players Page

Scenario: A user lands on the players page
  Given I am on the players page
  Then I should see a list of all players
  And A link to add a new player

Scenario: User can add/edit/delete a new player
  Given I am on the players page
  And I click "Add New Badders Player"
  Then I should see the add new player form
  And I fill out and submit the form
  Then A new player should be created
  Then I click 'Edit Player'
  And I update and save the player information
  Then The new player information should be saved


