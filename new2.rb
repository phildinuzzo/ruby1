#menu
#display a, b
#a 1..100
#b - multiples of 7 up to 200
#3 - back to menu?

puts "Please Type A or B"
puts "A - Display 1 to 100"
puts "B - Display multiples of 7"

choice = gets.chomp
  
# def multiples_of_seven upto
#   n = 0
#   while n < upto
#     n += 1
#     if n % 7 == 0
#       puts n
#   end
# end
# end

def multiples_of_seven upto
  n = 0
  while n < upto
    puts n
    n += 7
  end
end

case choice.upcase
  when "A"
    print (1..100).to_a
  when "B"
    puts "Multiples of 7:"
    multiples_of_seven(200)
  else
  	puts "#{choice} is invalid!"
end



