

class Menu
 
attr_reader :operand1, :operand2, :operation
 
  def display_prompt
    puts "Please enter the first number."
    @operand1 = gets.chomp.to_f
 
    puts "Please enter the second number."
    @operand2 = gets.chomp.to_f
 
    display_options
    @operation = gets.chomp.downcase
 
  end
 
  def display_options
    puts "Here are the availble operations:"
    puts "a - add #{@operand1} to #{@operand2}."
    puts "b - subtract #{@operand2} from #{@operand1}."
    puts "m - multiply #{@operand2} and #{@operand1}."
    puts "d - divide #{@operand1} by #{@operand2}."
    puts "e - raise #{@operand1} to the power of #{@operand2}."
 
    puts "Please enter the operation to perform."
  end
 
end
 
class Calculator
  def initialize(operand1, operand2)
    @operand1 = operand1
    @operand2 = operand2
  end
 
  def add
    @operand1 + @operand2
  end
 
  def subtract
    @operand1 - @operand2
  end
 
  def multiply
    @operand1 * @operand2
  end
 
  def divide
    @operand1 / @operand2
  end
 
  def exponent
    @operand1**@operand2
  end
 
end
 
m1 = Menu.new
 
m1.display_prompt
 
c1 = Calculator.new(m1.operand1, m1.operand2)
 
case m1.operation
  when 'a'
    puts "The result is: #{c1.add}"
  when 's'
    puts "The result is: #{c1.subtract}"
  when 'm'
    puts "The result is: #{c1.multiply}"
  when 'd'
    puts "The result is: #{c1.divide}"
  when 'e'
    puts "The result is: #{c1.exponent}"
  else
    puts "I can't do that Dave."
end