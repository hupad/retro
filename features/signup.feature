Feature: Sign Up
	User should sign up to gain access
	to the system


Scenario Outline: User Sign Up
	Given I am on sign up page
	When I fill in "Email" with "surekha@gmail.com"
	And I fill in "Password" with "welcome123"
	And I fill in "Password confirmation" with "welcome123"
	And I select team lead as "<is_team_lead>"
	And I select "2"
	When I click "Sign up"
	Then Redirect to "<action>" and see "<content>"

	Examples:
	| is_team_lead | action                              | content          |  
	| true         | /sretros/new                        | Create new Retro |  
	| false        | /sretros/:sretro_id/retro_notes/new | Retro Notes      |  

Scenario Outline: User sign up and validations
	Given I am on sign up page
	When I fill in "Email" with "<email>"
	And I fill in "Password" with "<password>"
	And I fill in "Password confirmation" with "<password>"
	And I select team lead as "<lead>"
	And I select team "<team>"
	And I click "Sign up"
	Then I should <validation>


	Examples:
		| email             | password   | lead | team | validation                    |  
		| surekha@gmailcom  | welcome123 | true | 2    | see "Email is invalid"        |  
		| surekha@gmail.com |            | true | 2    | see "Password can't be blank" |  
		| surekha@gmail.com | welcome123 | true |      | see "Team can't be blank"     |  
