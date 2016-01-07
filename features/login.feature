Feature: Log In
	In order to gain access to the system, user should
	log in first.

	Scenario: User Log In
		Given I am on the sign in page
		When I fill in "Email" with "harish@gmail.com"
		And I fill in "Password" with "welcome123"
		And I press "Log in"
		Then I should see "Signed in successfully"


	# Scenario: If user is team lead, redirect him to create retro path
	# 	Given I am on the sign in page
	# 	When I fill in "Email" with "harish@gmail.com"
	# 	And I fill in "Password" with "welcome123"
	# 	And I press "Log In"

