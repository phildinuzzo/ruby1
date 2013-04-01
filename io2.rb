

f = File.new('db.txt','w+')
stored_name = f.gets
f.close

puts "What is your name motherfucker?"
name = gets.chomp
puts name

if name == stored_name
	puts "Welcome back #{name}"
else
 f = File.new('db.txt','w+')
 f.puts name
 f.close
 puts "I'll remember you asshat"
end





# f = File.new("db.txt", "w+")

# puts "What is your name?"
# name = gets.chomp

# stored_name = f.read

# if name == stored_name
# 	puts "Welcome Back #{name}"
# else
#     f.puts name
#     puts "I'll remember you next time, sucka"
# end

# f.close