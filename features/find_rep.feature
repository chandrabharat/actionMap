Feature: Click on counties to see its representatives
  As a user
  So that I can find my representatives
  I want to click on my county to see its representatives 

Scenario: correct home page information
  Given I am on the home page
  Then I should see "National Map"

Scenario: See representatives in Orange County (CA)
  Given I am on the home page
  When I click on state "CA"
  And I click on county "Orange County"
  Then I should see "Fiona Ma"
  And I should see "Don Barnes"
  
Scenario: See representatives in Otsego County (NY)
  Given I am on the home page
  When I click on state "NY"
  And I click on county "Otsego County"
  Then I should see "Pat Ryan"
  And I should not see "Don Barnes"