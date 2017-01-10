Feature: Matches

Scenario: A user wants to create a singles match
  Given I am on the matches page
  And I see options to create a singles or doubles match
  And I click on "Add New Singles Match"
  Then I should see "Create New Singles Match"
  And A link back to the matches page


