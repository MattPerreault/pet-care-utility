Feature: Create a sign in page
As a pet utility app user
I want to sign into my account
So I can save my pets information to my account while keeping their information private

Scenario: User sees a login page
When I visit the pet-care-utility
Then I should see an option to log in
And I should see an option to create a new profile

Scenario: User is able to login
Given I am on the login page
When I log in
Then I should see my dashboard

Scenario: User is not able to login with the wrong login information
Given I am on the login page
When I login
And I do not enter the correct information
Then I should see a login error

Scenario: User is redirected to new user profile page
Given I am on the login page
When I click on "Create new user"
Then I should be redirected to the new user page

