
puts "What is your first name?"
first_name = gets.chomp.capitalize

puts "What is your age?"
age = gets.chomp.to_i

if age >= 21
  puts "Let's go to the bar, #{first_name}!"
else 
  puts "Get out of here, #{first_name}!"  
end

case age
  when  21
  	puts "Now you can drink!"
  when 0..20
  	puts "You're too young!"
end


def area(length, width)
  return length * width
end

puts "The area is " + area(10,40).to_s