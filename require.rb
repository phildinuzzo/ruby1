
require 'pry'
require './person.rb'

# p = Person.new
# puts "My name is #{p.name}"

def say_hello name
  message = "Hi #{name}"
  puts message
end

names = ['Phil','Asma','Natalie']

names.each do |i|
  binding.pry
  say_hello i
end

