# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#
puts "Welcome to the Teddit reader"
stories = []

#create function for each time you want a user to submit a story

def gets_story() 
  #create story hash
  story = {}

  #add title, votes and category to story hash
  puts "Do you have a story title?"
  story[:title] = gets.chomp
  puts "Enter the number of votes"
  story[:votes] = gets.chomp
  story[:votes] = story[:votes].to_i
  puts "What category would you put your story in?"
  story[:category] = gets.chomp

  #depending on topic of story - multiply the number of votes
    if story[:title].include? "cats"
      story[:votes] *= 5
    elsif story[:title].include? "bacon"
      story[:votes] *= 8
    elsif story[:title].include? "food"
      story[:votes] *= 3
    end

  puts "New story! Title is #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:votes]}"

end

stories << gets_story 
stories << gets_story

