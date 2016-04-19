Feature: Landing Page

Scenario: User arrives on the landing page
  Given I am on the landing page
  Then I should see 'Badders League'
  And I should see the 'login' button
  And I should see the 'Players' button

Scenario: User wants to see the list of players
  Given I am on the landing page
  And I click the 'Players' button
  Then I should go to the list of players 

Scenario: User can wants to add a match
  Given I am on the landing page
  And I click the 'View/Add Match Scores' button
  Then I should be see a list of previous scores
  