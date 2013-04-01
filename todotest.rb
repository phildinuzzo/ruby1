    puts "What would you like to do today?"
    puts "Press 1 to create a new task"
    puts "Press 2 to delete a task"
    puts "Press 3 to view unifinished tasks"
    puts "Press 4 to view finished tasks"
    a = gets.chomp
    loop do
      case a.to_i
        when (1..4)
          break
        else
        puts "Invalid! Please enter a number:"
        a = gets.chomp
      end
    end
    puts "GOOD!"