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
		
		 When I go to the post named "post_1" page
		 Then I should see "Test Post"
		  And I should see "Test Content"
			And I should not see "Second Post"
			And I should not see "Second Content"

  Scenario: User can create posts
    Given there is no posts
     When I go to the new post page
      And I fill in "Title" with "New Post Title"
      And I fill in "Content" with "New Post Content"
      And I click the "Create" action in the current locale
     Then I should see the "Post Created OK" message in the current locale
      And I should see "New Post Title"
      And I should see "New Post Content"
      And I should be on the post named "new_post_title" page

	Scenario: User can show a particular post
		Given the following posts
			|name 		|title 				|content 				|
			|post_1 	|Test Post 		|Test Content 	|
		
		 When I go to the post named "post_1" page
      And I fill in "commenter" with "kandalf"
      And I fill in "comment" with "Some comment"
      And I click the "Create Comment" action in the current locale
     Then I should be on the post named "post_1" page
      And I should see the "Comment Created OK" message in the current locale
      And I should see "kandalf"
      And I should see "Some comment"
