# Use your completed version from Teddit strings. 
# Or Copy the code from the strings_exercise_SN_solution.rb
#
# New Teddit Feature! If the Story is about cats multiply the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.

#For example:
# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!


puts "Welcome"

puts "Do you have a story title?"
title = gets.chomp

puts "Enter the number of votes"
votes = gets.chomp
votes = votes.to_i

puts "What category would you put your story in?"
category = gets.chomp

  if title.include? "cats"
    votes = votes * 5
  elsif title.include? "bacon"
    votes = votes * 8
  elsif title.include? "food"
    votes = votes * 3
  end

puts "New story! Title is #{title}, Category: #{category}, Current Upvotes: #{votes}"





