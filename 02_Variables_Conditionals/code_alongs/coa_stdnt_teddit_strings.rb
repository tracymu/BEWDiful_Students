#Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
#This exercise will be used throughout the ruby portion of this course. 
#Each lesson we will incrementally build a news aggregator. 
#First we will hard code stories into the code.
#Eventually we will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 

#This code along demonstrates how to work with strings. 
#Each version below, adds complexity to Teddit. Comment out each version before running the next.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
#
#'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
#'Story: Man raised by wolverines, then eaten Current upvotes: 4'

<<<<<<< HEAD
puts "Version 1"
puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"
puts
=======
>>>>>>> teacher/master

#Version 2 - Replace the story title and upvotes with variables.
###########
###########

<<<<<<< HEAD
title = "Man raised by wolverines, then eaten"
votes = 4

puts "Version 2"
puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
puts "Story: " + title + " Current upvotes: " + votes.to_s
puts
=======

>>>>>>> teacher/master

#Version 3 - Add data type casting (fix casting issue).
###########
###########

<<<<<<< HEAD
# As above!!
=======

>>>>>>> teacher/master

#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########

<<<<<<< HEAD
title = "Man raised by wolverines, then eaten"
votes = 4

puts "Version 3"
puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
puts "Story: #{title} Current upvotes: #{votes}"
puts
=======
>>>>>>> teacher/master

#Version 5 - Adding methods
###########
###########
<<<<<<< HEAD

def welcome
	puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
end

def print_story(title, votes)
  puts "Story: #{title} Current upvotes: #{votes}"
end

puts "Version 4"
welcome
print_story("Man raised by wolverines, then eaten", 4)
puts
=======
>>>>>>> teacher/master
