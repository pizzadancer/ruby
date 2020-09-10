$stdout.sync = true
require 'active_support/inflector'

youtubers = ["nakeyjakey", "kurzgesagt", "thesilentwatcher"]


def youtube_adder(youtubers)
  # youtubers.push(gets.chomp)
  channel = gets.chomp #capitalize/downcase/titleize maybe?
  # if channel = ""
    
  # else
    
  # end
  youtubers.push(channel)
  
  
  # if (channel.match(" ") ? "yes" : "no")
  #   # separate string by spaces and add each one to the array of youtubers
  #   new_youtubers = channel.split(" ")

  #   i = 0
  #   while i < new_youtubers.length
  #     youtubers.push(new_youtubers[i])
  #     i += 1 
  #   end

  # else
  #   # add single channel
  #   youtubers.push(channel)
  # end

end




print youtubers
puts

youtubers.push("teamfourstar")
print youtubers
puts

youtubers.push("chillhop")
print youtubers
puts


more = true

print youtubers
puts

youtubers.push("teamfourstar")
print youtubers
puts

youtubers.push("chillhop")
print youtubers
puts


more = true

print youtubers
puts

youtubers.push("teamfourstar")
print youtubers
puts

youtubers.push("chillhop")
print youtubers
puts


more = true

print youtubers
puts

youtubers.push("teamfourstar")
print youtubers
puts

youtubers.push("chillhop")
print youtubers
puts


more = true

print youtubers
puts

youtubers.push("teamfourstar")
print youtubers
puts

youtubers.push("chillhop")
print youtubers
puts


more = true

print youtubers
puts

youtubers.push("teamfourstar")
print youtubers
puts

youtubers.push("chillhop")
print youtubers
puts


more = true




print youtubers
puts

youtubers.push("teamfourstar")
print youtubers
puts

youtubers.push("chillhop")
print youtubers
puts


more = true
while more
  puts "Would you like to add more of your favorite youtubers?"
  answer = gets.chomp.downcase
  
  
  if answer == "yes"
    puts "Please enter a channel to add."
    youtube_adder(youtubers)
  else
    puts "Okay, that'll be it for adding the list."  
    more = false  
  end
  
end
puts "Here is your list of favorited youtubers!"
# print youtubers

print youtubers.map(&:titleize)