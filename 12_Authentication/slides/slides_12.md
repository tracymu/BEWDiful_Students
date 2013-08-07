![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")


https://github.com/plataformatec/devise#getting-started


#BEWD - Authentication

###Ben Askins


---


##Agenda

*	Review
	*	Rewsly Solution
*	Authentication
	*	Authentication Explained
	*	Devise Gem	

---


##Review
###Rewsly 

*	Let's review Rewsly solution from last class.

---


##Authentication

![GitHub Sign Up Page](../../assets/rails/login_screen.png)

---


##Authentication

*	Use of a combination of username and password to validate user identity
*	Tracking a user's identity on our app through the __session__

---

##Authentication
###What?


---

##Authentication
###Security


---



##Security



---

##Security
###Storing Passwords

If your database is compromised then passwords are compromised as well.
	*	Don't use the same password for all sites.	

---


##Security
###Hashing


	```Digest::SHA1.hexdigest("secret")
	# => "e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4"
	```
---


##Security
###Adding Salt

Salt is random data that are used as an additional input to a one-way function that hashes a password.


	```salt = "a761ce3a45d97e41840a788495e85a70d1bb3815"
		password = "secret"
		Digest::SHA1.hexdigest(salt+password)
		# =>"7963ca00e2e48ea80c615d037494de00a0964682"
	```
---


##Authentication
###Managing Users



---


##Managing Users
###Session

---

##Managing Users
###Cookie

*	Used to store small bits of information (maximum size about 4k).
*	Cookies allow web servers to provide a temporary unique ID to a browser, to enable session management.

---


##Authentication
###Gems


*	__Devise__
*	CanCan
*	Clearance
*	OmniAuth
*	DoorKeeper

---


##GEMS
###Free Code!


---


##Authentication 
###Devise GEM




---


##Devise 
###Recap


		gem 'devise', git: "https://github.com/plataformatec/devise.git", branch:  "rails4"
	
---


##Devise 
###Recap


		rails g devise:install # creates all the devise Controllers, views and initializers
		rails g devise user    # creates User model (or modifies it if it exists)
		rake db:migrate        # Let's Go!
	

---


##Devise 
###Recap


		<%= user_is_logged_in? %>
		<%= current_user %>

---


##Authentication 
###Recap


		<%= user_is_logged_in? %>
		<%= current_user %>

---

##Devise 
###Recap


		class ApplicationController ...
			before_action :authenticate_user!
		end
 
		class HomeController < ApplicationController
			skip_before_action :authenticate_user!
		end

---

##Devise 
###Recap


		devise_for :users, :path_names => { sign_in: 'login', sign_out: 'logout' }

---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Lab Time - Ritly

---


## Homework

Write a list of user stories for your final project.

---


<div id="resources">
## Resources

###Cheat Sheet

No cheat sheet this class. Remember, Google is your friend!


###Tips, Tricks & Advanced Reading

*	If you want to expand your knowledge about Rails authentication gems visit [Ruby Toolbox](https://www.ruby-toolbox.com/categories/rails_authentication) for a few more authentication gem options.

*	Great [article](http://scientopia.org/blogs/goodmath/2013/03/02/passwords-hashing-and-salt/) explaining passwords, hashing, and salt.


*	Advanced [article](http://edapx.com/2012/04/18/authorization-and-user-management-in-rails/) about authorization and users management in rails.

*	[Tutorial](http://everydayrails.com/2012/07/31/rails-admin-panel-from-scratch.html) on how to create an advanced admin panel. 

*	[Authentication From Scratch](http://railscasts.com/episodes/250-authentication-from-scratch) Rails Cast 



###Still Feel Lost? 
####Catch Up With These Resources

*	[Devise](http://railscasts.com/episodes/209-introducing-devise) Rails Cast 


