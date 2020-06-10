require "tty-prompt"                    # Gem to allow user to scroll through answer options

# puts "Do you want to position your ships or delegate the task?"

prompt = TTY::Prompt.new
decision = prompt.select("Do you want to position your ships or delegate the task?", %w(TakeCharge Delegate))

if decision == "TakeCharge"
    puts "Manual selection"
elsif decision == "Delegate"
    puts "Delegated decision"
else  
    puts "Doesn't work"
end