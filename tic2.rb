require 'pry'

class Game

  # def initialize
  #   board = @board
  # end
########  array.map{|i| i does shit}      runs a block more generically?
########  array.select{|i|}     checks to see if {} is true
########  array.each{}


  def intro
    puts "" 
    puts "Welcome to Tic-Tac-Toe!"
    puts ""
    puts "Player 1, what is your name?"
    @p1 = gets.chomp
    puts ""
    puts "Player 2, what is your name?"
    @p2 = gets.chomp
    puts ""
  end

  def board
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


  def player1
    # binding.pry
    loop do
      puts "#{@p1}, enter a number:"
      @a = gets.chomp
      if (1..9).include? @a.to_i
        break
      else
      puts "Invalid! Please enter a number:"
      @a = gets.chomp
      end
    end
    a = @a.to_i
    @board.each{|i| if i = @a @board[i] }
    if  a == 1 
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
      # unless a == (1..9)
      puts "Invalid input! Please enter a number."
      a = gets.chomp
    end
  end

  def player2
    loop do
      puts "#{@p2}, enter a number:"
      @a = gets.chomp
      if @a.to_i == 1
        break
      else
      puts "Invalid! Please enter a number:"
      @a = gets.chomp
      end
    end
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
  end

end







#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
g = Game.new

g.intro
g.board
g.draw

2.times do
g.player1
g.draw
g.player2
g.draw
end





