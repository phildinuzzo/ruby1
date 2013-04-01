#Dice!

array1 = []

puts "\nRolling the dice 100 times!"

100.times do
  a = rand(1..6)
  b = rand(1..6)
  array1 << (a + b)
end

puts "\n#{array1}"

puts "\nAnd here are the results:"

11.times do |i|

puts "The number #{i + 2} occurs #{array1.count(i + 2)} times!"

end


# a1 = array1.count(2)

# a1.times do
# print "*"
# end
# puts ''