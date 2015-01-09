#JOKESTER
Think you got what it takes to make people laugh? Test your skills on Jokester

- You're going to build an application that allows users to post jokes, have them upvoted and favorited by other users.
- Users can also follow other users to see all their new jokes.

##THE DEETS

###PSEUDOCODE
- Build your ERDs
- Think about the relationships and foreign keys in play
- How will you name your models?
- How will you associate the different models using?
- What will be the different attributes of your models?

###TDD
- Test your models, their associations and their validations

###Migrations && Models
- Make your tests pass

###User authentication
- Implement user auth and allow users to securely sign up and sign in to your website. 
- You have the option to use the method we've learned with Sinatra and readapt it to Rails.
- Or check out Devise, a gem that takes care of authentication in the back end: https://github.com/plataformatec/devise
- Users will _have_ to be logged in in order to see any page on the website
- The landing page will be the index of all the jokes

###CRUD FUNCTIONALITIES
- A user will be able to create, read, update and delete jokes.
- A user will be able to comment on the jokes. Think about how you will organize your routes (resources) in order to connect the comments to the joke.
- A user will be able to create, read, update and delete jokes.
- A user will be able to vote a joke up or down. **A user can only vote ONCE** 
- Will the vote be its own entity or part of the joke?

###FOLLOWING RELATIONSHIPS
- Look up _self-referential_ associations and this railscast: http://railscasts.com/episodes/163-self-referential-association
- Users can favorite jokes (except their own)
- Users can follow other users (only once)

###STYLING
- Add some styles!

###DEPLOY

####BONUS
- Implement User auth with Twitter
- Implement another API you think would benefit this app
- Implement notifications:
	- When the user gets a new follower
	- When the user gets a joke favorited 
- You can add an admin functionality to delete offensive jokes or comments. 

###PRESENTATIONS!! 
- Demo
- Talk about your process
- Lows and Highs

###GROUPS:

Kurt,
Trey,
Alex R,
Akin


James,
Danny,
Mo,
Emily

Jack,
Aurora,
Ian,
Sherry

Austin,
Andy K,
Matt L,
Rebecca

Kadar,
Matt C,
Weston

Alison T,
Alison M,
Alex B,
Andy L,
Sung