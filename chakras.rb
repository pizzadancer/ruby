$stdout.sync = true


all_chakras = "Muladhara Swadhisthana Manipura Anahata Vishuddha Ajna Sahasrara"
chakras = all_chakras.split(" ")
print chakras
puts

puts "Where do you feel the energy located?"
user_center = gets.chomp.capitalize
puts user_center + ", Did I get that right?"

if user_center == "muladhara"
  