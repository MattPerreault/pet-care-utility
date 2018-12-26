Feature: Create a New Pet Profile
As a pet owner
I want to create a profile specific to my pets species 
So I can easily access important information specific to my pet

Scenario: The user already has atleast one pet profile
Given I am on the dashboard
Then I should see a button "My Pets"
When I click on "My Pets"
Then I should be redirected to My Pets page
And I should see a button "New Pet Profile"
When I click on "New Pet Profile" 
Then I should be redirected to create pet profiles 

Scenario: The user doesn't have atleast on pet profile
Given I am on the dashboard
Then I should see a button "My Pets"
When I click on "My Pets" 
Then I should be redirecteed to create pet profile page

Scenario: The user can see a place to create a new pet profile
When I am on the create pet profile page
Then I should see a field to enter a pet name
And I should see a field to enter a pet species
And I should see a field to enter a pet description
And I should see a "Create Pet Profile" button

Scenario: The user is able to create a new pet profile
Given I am on create pet profile page
When I enter my pets name species and description
And I click on the "Create Pet Profile" button
Then I should be redirected to My Pets page
And I should see my pets profile icon

