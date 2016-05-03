Feature: Matches

Scenario: A user wants to create a new match 
  Given I am on the matches page
  And I click "New Match"
  Then I should see the new match options
  And A link back to the matches page

Scenario: A user wants to create a singles match
  Given I am on the new match page
  And I see options to create a singles or doubles match
  And I click on "Create Singles Match"
  Then I should see "Create New Singles Match"


