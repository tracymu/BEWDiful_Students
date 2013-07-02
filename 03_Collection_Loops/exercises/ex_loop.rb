# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(

count = 100

while count > 0
# account for pluralisation
  if count>1
  pluralise = "bottles"
  elsif count == 1
  pluralise = "bottle"
  end

# normal stanzas
  puts "#{count} #{pluralise} of beer on the wall"
  puts "#{count} #{pluralise} of beer!"
  puts "You take one down and pass it around,"

# for last line of each stanza you need one less bottle 
  count-=1

# in the last 

  if count > 1
    puts "#{count} #{pluralise} of beer on the wall!"
    puts
  elsif count == 1
    puts "1 bottle of beer on the wall"
    puts
  end 
end

puts "No more bottles of beer on the wall :-("

