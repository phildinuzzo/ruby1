

def count_up i
puts "start"
  puts i
  if i < 10
  	count_up(i + 1) 
  end
  puts "end"
 end

 count_up 1