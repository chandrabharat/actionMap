Feature: search for representatives

Scenario: find representative at address
  Given I am on the representatives page 
  And I fill in "address" with "Oakland, CA"
  And I press "Search"
  Then I should see "Barbara Lee"
  When I follow "News Articles for Barbara Lee"
  Then I should see "Listing News Articles for Barbara Lee"
  When I follow "Add News Article"