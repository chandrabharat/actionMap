Feature: Login with google

Scenario: Login through Google
  Given I am on the home page
  When I follow "Login"
  Then I should see "Sign In"
  Then I press "Sign in with Google"
  And I should be on the home page
  When I follow "Login"
  Then I should see "Your Profile"
  And I should see "You are already logged in. Logout to switch accounts."
  Then I follow "Logout"
  And I should be on the home page
  When I follow "Login"
  Then I should see "Select an authentication provider below to login."
