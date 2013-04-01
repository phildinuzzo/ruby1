require 'pry'

class Game

  attr_accessor :p1name, :p2name
  ########  array.map{|i| i does shit}      runs a block more generically?
  ########  array.select{|i|}     checks to see if {} is true
  ########  array.each{}

  def intro
    puts "" 
    puts "Welcome to Tic-Tac-Toe!"
    puts ""
    puts "Player 1, what is your name?"
    @p1name = gets.chomp
    puts ""
    puts "Player 2, what is your name?"
    @p2name = gets.chomp
    puts ""
  end

  def board
    @board = [0,1,2,3,4,5,6,7,8,9]
  end

  def draw  
    puts ""
    puts "   #{@board[1]}  |  #{@board[2]}  |  #{@board[3]}  "
    puts " -----------------"
    puts "   #{@board[4]}  |  #{@board[5]}  |  #{@board[6]}  "
    puts " -----------------"
    puts "   #{@board[7]}  |  #{@board[8]}  |  #{@board[9]}  "
    puts ""
  end

  def player1
    # # binding.pry
    # loop do
    puts "#{@p1name}, enter a number:"
    @a = gets.chomp

    loop do
      case @a.to_i
        when (1..9)
          break
        else
        puts "Invalid! Please enter a number:"
        @a = gets.chomp
      end
    end
    a = @a.to_i
    @board.map{|i| if i == a then @board[i] = "X"  unless i == "O" end}
  end

  def player2
      puts "#{@p2name}, enter a number:"
      @a = gets.chomp

      loop do
        case @a.to_i
          when (1..9)
            break
          else
          puts "Invalid! Please enter a number:"
          @a = gets.chomp
        end
      end

      a = @a.to_i
      @board.map{|i| if i == a then @board[i] = "O" unless i == "X" end}
  end

  def win
    if 
      @board[1].is_a?(String) && @board[2] == @board[1] && @board[3] == @board[1]
      return true
    elsif
      @board[4].is_a?(String) && @board[5] == @board[4] && @board[6] == @board[4]
      return true
    elsif    
      @board[7].is_a?(String) && @board[8] == @board[7] && @board[9] == @board[7]
      return true    
    elsif
      @board[1].is_a?(String) && @board[4] == @board[1] && @board[7] == @board[1]
      return true   
    elsif
      @board[2].is_a?(String) && @board[5] == @board[2] && @board[8] == @board[2]
      return true
    elsif
      @board[3].is_a?(String) && @board[6] == @board[3] && @board[9] == @board[3]
      return true
    elsif    
      @board[1].is_a?(String) && @board[5] == @board[1] && @board[9] == @board[1]
      return true
    elsif    
      @board[3].is_a?(String) && @board[5] == @board[3] && @board[7] == @board[3]
      return true
    else
      return false
    end

  end

end
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
g = Game.new

g.intro
g.board
g.draw

loop do
  g.player1
  g.draw
  if g.win == true then puts "#{g.p1name} is the winner!"
    break
  end
  g.player2
  g.draw
  if g.win == true then puts "#{g.p2name} is the winner!"
    break
  end
end
