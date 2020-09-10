### REQUIREMENTS ##

$stdout.sync = true
require 'active_support/inflector'

########



### VARIABLES & DEFINITIONS ###

youtubers = ["nakeyjakey", "kurzgesagt", "thesilentwatcher", "teamfourstar", "chillhop"]


# Asks user for a channel, then adds the channel to the youtuber array. If user enters empty string, it will end the loop and the function.
def youtube_adder(youtubers)
  more = true
  while more
    puts "Please enter a channel to add. **Hit ENTER with nothing written to finish.**"
    channel = gets.chomp
    if channel == ""
      more = false
    else
      youtubers.push(channel)
    end
  end  
end

########



### START: USER INPUT ###

puts "These are your favorite Youtubers so far!"
print youtubers
puts

# Prompts User the option to add youtube channels.
#   if yes: goto youtube_adder method
#   else: print array and end. 

puts "Would you like to add more of your favorite youtubers?"
answr = gets.chomp.downcase

if answr == "yes"
  youtube_adder(youtubers)
else
  puts "Okay, we'll stay with the this."
end

########



### USER OUTPUT ###

puts "Here is your list of favorited youtubers!"
print youtubers.map(&:titleize)

########







# Unused Code


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


  
# print youtubers
# puts

# youtubers.push("teamfourstar")
# print youtubers
# puts

# youtubers.push("chillhop")
# print youtubers
# puts


# more = true
# # while more
#   puts "Would you like to add more of your favorite youtubers?"
#   answr = gets.chomp.downcase
  
  
#   if answr == "yes"
#     puts "Please enter a channel to add."
#     youtube_adder(youtubers)
#   else
#     puts "Okay, that'll be it for adding the list."  
#     more = false  
#   end
  
# end
