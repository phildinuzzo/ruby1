#Calculator - Menu class, Calculator class
#add, subtract, multiply, divide, etc

puts "Welcome to my calculator!"

    puts "Enter the first value:"
    value_one = gets.chomp

# if
#     n = Integer(value_one)
# else 
#     puts "Not an integer!"
# end


# if Integer(value_one); true
# 	puts "Thanks!"
# else puts "Sorry, that is not a number."
# end

    puts "Enter the second value:"
    value_two = gets.chomp	

# if Integer(value_two); true
# 	puts "Thanks!"
# else puts "Sorry, that is not a number."
# end

puts "Thanks! Do you want to add, subtract, multiply ot divide these numbers?"
puts "Enter '+', '-', '*' or '/'"
value_three = gets.chomp


puts "The answer is:"

if value_three == "+"
	 puts value_one.to_f + value_two.to_f
elsif value_three == "-"
	puts value_one.to_f - value_two.to_f
elsif value_three == "/"
	puts value_one.to_f / value_two.to_f
elsif value_three == "*"
	puts value_one.to_f * value_two.to_f
else
	puts "Error! You did not input a valid operator."
end


# if value_three = +


# class Menu
# 	def main_loop
# 		while true





# 		end
# end

# class Calc
#   def initialize(value_one, value_two, value_three)

#   end




# end

# class Calc

# @value_one
# @value_two


# end

# Menu.draw


