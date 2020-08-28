$stdout.sync = true
require 'launchy'
# STDOUT.flush

# Color Hash Table to link favorite colors to gemstone
color_toGemstone = {
  "blue" => "sapphire",
  "red" => "garnet", 
  "white" => "diamond",
  "orange" => "topaz",
  "green" => "emerald",
  "yellow" => "citrine",
  "purple" => "amethyst"
} 

gem_prices = {
  "sapphire" =>1000,
  "garnet" => 30, 
  "diamond" => 2400,
  "topaz" => 250,
  "emerald" => 4000,
  "citrine" => 10,
  "amethyst" => 20 
}

# Takes in the gemstone string and launches a webpage about that gemstone using Launchy
def launch_me(string)
  addresses = {
    "garnet" => "https://en.wikipedia.org/wiki/Garnet",
    "sapphire" => "https://en.wikipedia.org/wiki/Sapphire",
    "topaz" => "https://en.wikipedia.org/wiki/Topaz",
    "diamond" => "https://en.wikipedia.org/wiki/Diamond",
    "emerald" => "https://en.wikipedia.org/wiki/Emerald",
    "citrine" => "https://en.wikipedia.org/wiki/Quartz#Citrine",
    "amethyst" => "https://en.wikipedia.org/wiki/Amethyst"
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
fav_color = gets.chomp.capitalize #test
gemstone = color_toGemstone[fav_color.downcase]

puts "You pick #{fav_color} as your favorite color." #test
puts "You will like #{gemstone.capitalize}." #test
# launch_me(gemstone) #test
puts 

puts "Ah yes, beautiful choice. Let me place that into your cart\n"
# Make a price list/hashtable and keep tab of how much money youre going to spend on gems
cart = []
cart << gemstone

puts "Would you like any others? Here is a list: \n"
color_toGemstone.each do |key, value|
  print "#{value}, " #Bob's #{key} is 
end
puts 
print "> "
gem_choice = gets.chomp
# launch_me(gem_choice)

puts "Is #{gem_choice.capitalize} what you wanted? (y / n) ?"
print "> "
want = gets.chomp
if want
  cart << gem_choice
end

# need to interate through the cart and save the value of the cart item 
# then after we add up all the values
total = 0.0
# item_value = 0
i = 0 
while i < cart.length
  # puts i
  # puts cart[i]
  total += gem_prices[cart[i]]
  i += 1 
end

puts "Your total shopping experience at the Royal Gemetisserie is $#{total} dollars."
puts "You walk out with your high end bag, somewhat dumbfounded that you parted with so much money..."
puts "but...SHINY"
puts "END"


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