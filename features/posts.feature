Feature: Create Posts
  In order to have posts in my blog
  As a blogger
  I want to be able to manage my posts


  Scenario: User can lists posts
		Given the following posts
			|name 		|title 				|content 				|
			|post_1 	|Test Post 		|Test Content 	|
			|post_2 	|Second Post	|Second Content |

		When I go to the posts page
		Then I should see "Test Post"
		 And I should see "Second Post"
		 And I should see "Test Content"
		 And I should see "Second Content"


	Scenario: User can show a particular post
		Given the following posts
			|name 		|title 				|content 				|
			|post_1 	|Test Post 		|Test Content 	|
			|post_2 	|Second Post	|Second Content |
		
		 When I go to the "post_1" page
		 Then I should see "Test Post"
		  And I should see "Test Content"
			And I should not see "Second Post"
			And I should not see "Second Content"

