
class Board

  def initialize

    @board = [[1,2,3],[4,5,6],[7,8,9]]

  end

  def board
  	@board
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


  def p1move

  end


  def p2move


  end




end

# class Player1
# 	def initialize
#     @player1 = x
#   end
#   def win
#     if b.board = [['X','X','X'],[*,*,*],[*,*,*]]
#     elsif b.board = [[*,*,*],['X','X','X'],[*,*,*]]
#     elsif b.board = [[1,2,3],[4,5,6],[7,8,9]]
#     elsif b.board = [[1,2,3],[4,5,6],[7,8,9]]
#     elsif b.board = [[1,2,3],[4,5,6],[7,8,9]]
#     elsif b.board = [[1,2,3],[4,5,6],[7,8,9]]
#     elsif b.board = [[1,2,3],[4,5,6],[7,8,9]]
#     elsif b.board = [[1,2,3],[4,5,6],[7,8,9]]
#   end
# end

# class Player2
#   def initialize
#     @player2 = o

#   end


# end



puts ""
puts "WELCOME TO TIC TAC TOE!"
b = Board.new
b.draw

b.p1move


# until ( x.win = true || player2 = win)
loop do

  puts "Player 1, enter a number"
  a = gets.chomp

  # if 
  #   a == 1
  #   loop do
  #   puts "Invalid input! Please enter a number."
  #   a = gets.chomp
  #   until a == 2
  #   end
  # end

  a = a.to_i

  if  a == 1 
    b.board[0][0] = "X"
  elsif a == 2
    b.board[0][1] = "X"
  elsif a == 3
    b.board[0][2] = "X"
  elsif a == 4
    b.board[1][0] = "X"
  elsif a == 5
    b.board[1][1] = "X"
  elsif a == 6
    b.board[1][2] = "X"
  elsif a == 7
    b.board[2][0] = "X"
  elsif a == 8
    b.board[2][1] = "X"
  elsif a == 9
    b.board[2][2] = "X"
  else
    puts "Invalid input! Please enter a number."
    a = gets.chomp.to_i
#EXCEPTION
  end



b.draw

  puts "Player 2, enter a number"
  a = gets.chomp.to_i
  if a == 1 
    b.board[0][0] = "O"
  elsif a == 2
    b.board[0][1] = "O"
  elsif a == 3
    b.board[0][2] = "O"
  elsif a == 4
    b.board[1][0] = "O"
  elsif a == 5
    b.board[1][1] = "O"
  elsif a == 6
    b.board[1][2] = "O"
  elsif a == 7
    b.board[2][0] = "O"
  elsif a == 8
    b.board[2][1] = "O"
  elsif a == 9
    b.board[2][2] = "O"
  else
    puts "Invalid input! Please enter a number."
    a = gets.chomp.to_i
  end


b.draw

end





 
#####     

# @board.map{|i| (if i == 1) "x"}


# puts ""
# puts "   #{@board[0][0]}  |  #{@board[0][1]}  |  #{@board[0][2]}  "
# puts " -----------------"
# puts "   #{@board[1][0]}  |  #{@board[1][1]}  |  #{@board[1][2]}  "
# puts " -----------------"
# puts "   #{@board[2][0]}  |  #{@board[2][1]}  |  #{@board[2][2]}  "
# puts ""


# x.map! { |element|
#    if(element == "hello")
#        "hi" # change "hello" to "hi"
#    else
#        element
#    end