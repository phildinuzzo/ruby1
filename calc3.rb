class Menu

  loop do
    puts "Welcome to my calculator! Type 'start' to begin or 'exit' to quit."
      
    d = gets.chomp

    if d == "exit" 
      break
    elsif d == "start"

      puts "Enter the first value:"
      @a = gets.chomp

      puts "Enter the second value:"
      @b = gets.chomp

    else puts "Please type 'start' or 'exit'" 
      d = gets.chomp
    end
  end


end


class Calc
 
  def initialize(a, b)
    @a = a
    @a = b
  end

  def plus
    @a.to_f + @b.to_f
  end

  def minus
    @a.to_f - @b.to_f
  end

  def multiply
    @a.to_f * @b.to_f
  end

  def divide
    @a.to_f / @b.to_f
  end

end

m1 = Menu.new

c1 = Calc.new(m1.a, m1.b)


case m1.operation
    puts "The result is: #{c1.add}"
    puts "The result is: #{c1.subtract}"
    puts "The result is: #{c1.multiply}"
  when 'd'
    puts "The result is: #{c1.divide}"
  when 'e'
    puts "The result is: #{c1.exponent}"
  else
    puts "I can't do that Dave."
end


  # if a == "exit" 
  #   break 
  # elsif b == "exit" 
  #   break 
  # elsif c == "exit" 
  #   break 
  # else 
  # end


    # puts "Enter the first value:"
    # a = gets.chomp

# if
#     n = Integer(value_one)
# else 
#     puts "Not an integer!"
# end

# if Integer(value_one); true
#   puts "Thanks!"
# else puts "Sorry, that is not a number."
# # end

#     puts "Enter the second value:"
#     b = gets.chomp
   

