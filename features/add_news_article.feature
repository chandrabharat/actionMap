Feature: add_news_article

Scenario: Login through GitHub
  Given I am on the home page
  When I follow "Login"
  Then I should see "Sign In"
  Then I press "Sign in with GitHub"
  And I should be on the home page
  When I follow "Search"
  Then I should be on the representatives page
  And I fill in "address" with "Oakland, CA"
  And I press "Search"
  Then I should see "Gavin Newsom"
  When I follow "News Articles for Gavin Newsom"
  Then I should see "Listing News Articles for Gavin Newsom"
  When I follow "Add News Article"
  Then I should see "Create news article"
  When I select "Gavin Newsom" from "news_item_representative"
  When I select "Racism" from "news_item_issue"
  When I press "Search"
  Then I should see "Rating"
  When I select "5" from "news_item_rating"
  When I press "Save"
  Then I should see "News item was successfully created"
  When I follow "Edit"
  When I press "Save"
  Then I should see "News item was successfully updated"