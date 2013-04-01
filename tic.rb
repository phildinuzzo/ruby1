puts ""
puts "WELCOME TO TIC TAC TOE!"

class Board

  def initialize

    @board = [[1,2,3],[4,5,6],[7,8,9]]

  end

  def draw

	puts ""
	puts "   #{@board[0][0]}  |  #{@board[0][1]}  |  #{@board[0][2]}  "
	puts " -----------------"
	puts "   #{@board[1][0]}  |  #{@board[1][1]}  |  #{@board[1][2]}  "
	puts " -----------------"
	puts "   #{@board[2][0]}  |  #{@board[2][1]}  |  #{@board[2][2]}  "
	puts ""

  end
end





loop do
  puts "Player 1, enter a number"
  a = gets.chomp.to_i
  if a == 1 
    @board[0][0] = "X"
  elsif a == 2
    @board[0][1] = "X"
  elsif a == 3
    @board[0][2] = "X"
  elsif a == 4
    @board[1][0] = "X"
  elsif a == 5
    @board[1][1] = "X"
  elsif a == 6
    @board[1][2] = "X"
  elsif a == 7
    @board[2][0] = "X"
  elsif a == 8
    @board[2][1] = "X"
  elsif a == 9
    @board[2][2] = "X"
  else
    puts "Invalid input! Please enter a number."
    a = gets.chomp.to_i
  end

b = Board.new
b.draw

  puts "Player 2, enter a number"
  a = gets.chomp.to_i
  if a == 1 
    @board[0][0] = "O"
  elsif a == 2
    @board[0][1] = "O"
  elsif a == 3
    @board[0][2] = "O"
  elsif a == 4
    @board[1][0] = "O"
  elsif a == 5
    @board[1][1] = "O"
  elsif a == 6
    @board[1][2] = "O"
  elsif a == 7
    @board[2][0] = "O"
  elsif a == 8
    @board[2][1] = "O"
  elsif a == 9
    @board[2][2] = "O"
  else
    puts "Invalid input! Please enter a number."
    a = gets.chomp.to_i
  end

puts ""
puts "   #{@board[0][0]}  |  #{@board[0][1]}  |  #{@board[0][2]}  "
puts " -----------------"
puts "   #{@board[1][0]}  |  #{@board[1][1]}  |  #{@board[1][2]}  "
puts " -----------------"
puts "   #{@board[2][0]}  |  #{@board[2][1]}  |  #{@board[2][2]}  "
puts ""

end



  	# puts "Player 2, enter a number"
   #  a = gets.chomp








class Exceptions

end

