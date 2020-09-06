$stdout.sync = true
# Memory Bank
memories = []

def memory_card(memories_lst)
  puts "These are your memories saved."
  
  # Iterates through the memories array, adds a number infront of every memory to make a clean list, then puts the memories for user 
  i = 0
  while i < memories_lst.length
    memories_lst[i] = (i+1).to_s + ". " + memories_lst[i]
    i += 1
  end
  puts memories_lst
end

# memory_card(memories)
#   puts "That's it and that's all."
# end


def start_memories(memories_lst)
  while true
    puts "Do you have any other memories to add? *HINT* (y or yes, n or no) "
    answer = gets.chomp.downcase
    if answer == "yes" || answer == "y"
      puts "Please enter your next memory. "
      memories_lst << gets.chomp.capitalize
      # print memories_lst
      puts
    elsif answer == "no" || answer == "n"
      puts "That's all for today then. Let me generate your memorycard."
      memory_card(memories_lst)
      break
    else
      puts "Please try again and use the hint as a guide."
    end
  end

end





puts "What is your first memory?"
memories << gets.chomp.capitalize
print memories
puts
puts "Thank you for your first memory. We'll save that to your database."
start_memories(memories) 



