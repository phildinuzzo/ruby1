#To Do List!

class ToDo

  # attr_accessor :alltasks
  def hash
    @alltasks = {}
  end

  def intro
    puts "\nWelcome to your To Do list!"
  end

  def menu

    puts "\nWhat would you like to do today?"
    puts "Enter 1 to create a new task"
    puts "Enter 2 to delete a task"
    puts "Enter 3 to mark a task as complete"
    puts "Enter 4 to view unifinished tasks"
    puts "Enter 5 to view finished tasks"
    puts "Enter 6 to exit"
    @a = gets.chomp
    loop do
      case @a.to_i
        when (1..6)
          break
        else
        puts "Invalid! Please enter 1 - 6:"
        @a = gets.chomp
      end
  end

  def functions
    if 
      @a == "1"
      puts "What is the task?"
      taskname = gets.chomp
      @alltasks.store(taskname, "undone")
      puts @alltasks                    #REMOVE LATER
      puts "'#{taskname}' has been saved and marked as undone."
    elsif 
      @a == "2"
      puts "Enter the name of the task you want to remove?"
      @alltasks.each {|k,v| puts "#{k} is #{v}" }
      b = gets.chomp
      puts "#{b} has been removed"
      @alltasks.delete(b)
    elsif 
      @a == "3"
      puts "Which task did you complete, hotshot?"
      @alltasks.each {|k,v| if v == "undone" then puts "#{k} is #{v}" end}
      b = gets.chomp
      puts "#{b} has been marked as complete!"
      @alltasks[b] = "done"
    elsif 
      @a == "4"
      if @alltasks.has_value?("undone")
      puts "Here are your unfinished tasks. Get to work, buddy!"
      @alltasks.each {|k,v| if v == "undone" then puts "#{k} is #{v}" end}
      else
      puts "No unfinished tasks!"
      end
    elsif
      @a == "5"
      if @alltasks.has_value?("done")
      puts "Here are your completed tasks. Nice work!"
      @alltasks.each {|k,v| if v == "done" then puts "#{k} is #{v}" end}
      else
      puts "No finished tasks, get to work!"
      end
    else
      abort("Have a nice day, slacker!")
    end
  end

end
end


t = ToDo.new
t.hash
t.intro

loop do
t.menu
t.functions
  case @a.to_i
    when 5
      break
    else
  end
end


