
#open a file
f = File.new('foo.txt', 'w+')

puts "What is your name?"

name = gets.chomp

#write to a file

f.puts(name)
f.close

f = File.new("foo.txt","r")
puts "Your name is"
#close the file
puts f.read

#re-open a file


#display the contents

