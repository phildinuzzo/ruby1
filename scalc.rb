class Calculator
  def initialize(first_value, second_value, operation)
    @first_value = first_value
    @second_value = second_value
    @operation = operation
  end
  
  def add(first_value, second_value)
    answer = first_value.to_i + second_value.to_i
    puts "Heres the answer: #{answer}"
  end
  def subtract(first_value, second_value)
    answer = first_value.to_i - second_value.to_i
    puts "Heres the answer: #{answer}"
  end
  def multiply(first_value, second_value)
    answer = first_value.to_i * second_value.to_i
    puts "Heres the answer: #{answer}"
  end
  def divide(first_value, second_value)
    answer = first_value.to_i / second_value.to_i
    puts "Heres the answer: #{answer}"
  end
  def call
    case @operation
      when "A"
        add(@first_value, @second_value)
      when "S"
        subtract(@first_value, @second_value)
      when "M"
        multiply(@first_value, @second_value)
      when "D"
        divide(@first_value, @second_value)
      else
        puts "Enter Value"
     end
  end
end
 
class Menu
  
  def first_value
    @first_value
  end
 
  def second_value
    @second_value
  end
 
  def operation
    @operation
  end
 
 
  def get_values
    puts "Enter first value"
    @first_value = gets.chomp
    puts "Enter second value"
    @second_value = gets.chomp
    puts "What do you want to do?"
    puts "Add - A"
    puts "Subtract - S"
    puts "Multiply - M"
    puts "Divide - D"
   @operation = gets.chomp
  end
end
loop do
my_menu = Menu.new
my_menu.get_values
my_calc = Calculator.new(my_menu.first_value, my_menu.second_value, my_menu.operation)
my_calc.call
end