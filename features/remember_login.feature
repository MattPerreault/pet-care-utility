Feature: Remember login information
As a pet utility app user
I want to be able to save my login information
So I don't have to sign in every time I use the app

Scenario: User has the option to remember their login information
Given I am on the login page
When I log in
And I click the "Remember my login information" button
Then I should see a success message.

Scenario: User is remembered
Given I have a user profile
And I my login information is remembered
When I navigate away from the application
And I return to the application
Then I should see my dashboard
