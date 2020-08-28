$stdout.sync = true
require 'launchy'
# STDOUT.flush

# Color Hash Table to link favorite colors to gemstone
color_toGemstone = {
  "blue" => "sapphire",
  "red" => "garnet", 
  "white" => "diamond",
  "orange" => "topaz"
} 

# Takes in the gemstone string and launches a webpage about that gemstone using Launchy
def launch_me(string)
  addresses = {
    "garnet" => "https://en.wikipedia.org/wiki/Garnet",
    "sapphire" => "https://en.wikipedia.org/wiki/Sapphire",
    "topaz" => "https://en.wikipedia.org/wiki/Topaz",
    "diamond" => "https://en.wikipedia.org/wiki/Diamond"
  }

  Launchy.open(addresses[string])  
end


puts <<-INTRO
  START
  You're walking on a busy city street.
  People wiz by you and around you.

  "This looks like a nice store", you think.
  You pull the art deco framed glass door and take a step inside.
  The air of luxury empties through your face into the city street as the door shuts behind you.

  As you walk towards the glass case, a ceremony of bright lights blinds you.
  "Why do I feel so poor standing here", you think.
  
  Thousand of gems pour into your vision as your consciousness acclamates to the sight of 200 mortages.

  You point to your favorite color. 

INTRO
print "> "
# fav_color = gets.chomp.downcase
fav_color = gets.chomp.capitalize #test
# puts "You pick #{fav_color.capitalize} as your favorite color."
puts "You pick #{fav_color} as your favorite color." #test
gemstone = color_toGemstone[fav_color.downcase]
# puts "You will like #{color_toGemstone[fav_color].capitalize}."
puts "You will like #{gemstone.capitalize}." #test
# puts fav_color
# launch_me(color_toGemstone[fav_color])
launch_me(gemstone) #test
puts "We will now add that to your shopping cart."
# Make a price list/hashtable and keep tab of how much money youre going to spend on gems
cart = []
cart << gemstone
puts "lets try this again"

# gemstone = gets   
# puts "So you like #{gemstone}"

# puts <<-RAVEN
#   Once upon a midnight dreary, while I pondered, weak and weary, 
#   Over many a quaint and curious volume of forgotten lore— 
#       While I nodded, nearly napping, suddenly there came a tapping, 
#   As of some one gently rapping, rapping at my chamber door. 
#   "'Tis some visitor," I muttered, "tapping at my chamber door— 
#               Only this and nothing more." 
#   RAVEN