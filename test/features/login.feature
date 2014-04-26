Feature: As a customer
  In order to buy something
  From the amazon.com
  I want to login the page

Scenario: Member logins the page
	Given I am on home page of Amazon
	When I click "Hello. Sign in" button
	And I sign in with "username@mail.com" and "wrong.password"
	Then Page should have content "There was a problem with your request"	
	When I sign in with "username@mail.com" and "correct.password"
	Then Page should have content "Hello, mesut"
