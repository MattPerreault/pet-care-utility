Feature: Create a New Profile
As a pet utility app user
I want to create a new account
So I can create and save new pet profiles to my account

Scenario: The user can see a place to create a new profile
When I am on the new profile page
Then I should see a field to enter a username
And I should see a field to enter a password twice
And I should see a "Create Profile" button

Scenario: The user is able to create a new profile
Given I am on the new profile page
When I enter my username and password
And I click on the "Create Profile" button
Then I should be redirected to my dashboard

Scenario: The password creation is verified
When I enter a password in the first password field
And I enter a different password in the second password field
Then I should see a "Password Mismatch" error