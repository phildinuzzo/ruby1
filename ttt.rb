# move positions
#
#  0 | 1 | 2
# ---+---+---
#  3 | 4 | 5
# ---+---+---
#  6 | 7 | 8

class TicTacToe
  module Patterns
    Winning =
      [[(/ OO....../),0],[(/O..O.. ../),6],
       [(/......OO /),8],[(/.. ..O..O/),2],
       [(/ ..O..O../),0],[(/...... OO/),6],
       [(/..O..O.. /),8],[(/OO ....../),2],
       [(/ ...O...O/),0],[(/..O.O. ../),6],
       [(/O...O... /),8],[(/.. .O.O../),2],
       [(/O O....../),1],[(/O.. ..O../),3],
       [(/......O O/),7],[(/..O.. ..O/),5],
       [(/. ..O..O./),1],[(/... OO.../),3],
       [(/.O..O.. ./),7],[(/...OO .../),5]]
    Blocking =
      [[(/  X . X  /),1],[(/ XX....../),0],[(/X..X.. ../),6],
       [(/......XX /),8],[(/.. ..X..X/),2],[(/ ..X..X../),0],
       [(/...... XX/),6],[(/..X..X.. /),8],[(/XX ....../),2],
       [(/ ...X...X/),0],[(/..X.X. ../),6],[(/X...X... /),8],
       [(/.. .X.X../),2],[(/X X....../),1],[(/X.. ..X../),3],
       [(/......X X/),7],[(/..X.. ..X/),5],[(/. ..X..X./),1],
       [(/... XX.../),3],[(/.X..X.. ./),7],[(/...XX .../),5],
       [(/ X X.. ../),0],[(/ ..X.. X /),6],[(/.. ..X X /),8],
       [(/ X ..X.. /),2],[(/  XX.. ../),0],[(/X.. .. X /),6],
       [(/.. .XX   /),8],[(/X  ..X.. /),2],[(/ X  ..X../),0],
       [(/ ..X..  X/),6],[(/..X..  X /),8],[(/X  ..X.. /),2]]
    Won =
      [[(/OOO....../),:O], [(/...OOO.../),:O],
       [(/......OOO/),:O], [(/O..O..O../),:O],
       [(/.O..O..O./),:O], [(/..O..O..O/),:O],
       [(/O...O...O/),:O], [(/..O.O.O../),:O],
       [(/XXX....../),:X], [(/...XXX.../),:X],
       [(/......XXX/),:X], [(/X..X..X../),:X],
       [(/.X..X..X./),:X], [(/..X..X..X/),:X],
       [(/X...X...X/),:X], [(/..X.X.X../),:X]]
  end

  def initialize
    @board = [].fill(0, 9) { " " }
    @players = { :X => 'X', :O => 'O' }
    @turn = :X
  end

  def play
    winner_flag = false
    9.times do
      if @turn === :X
        display
        player_move
      else
        cpu_move
      end
      winner = someone_win?
      unless winner.nil?
        display
        print "\n#{winner} is the winner!\n"
        winner_flag = true
        break
      end
      @turn = (@turn === :X) ? :O : :X
    end
    if (!winner_flag)
      display
      print "\nGame is a draw.\n"
    end
  end

  private
  def player_move
    print "Enter your move [0-8]: "
    move_pos = gets.chomp.to_i
    unless (0..8) === move_pos
      print "\nInvalid move: #{move_pos}. Please re-enter.\n"
      player_move
      return
    end
    if @board.at(move_pos) != ' '
      print "\nSpace is already occupied. Please re-enter.\n"
      player_move
      return
    end
    move move_pos, 'X'
  end

  def cpu_move
    move_pos = get_winning_pattern_move
    if move_pos.nil?
      move_pos = get_blocking_pattern_move
      if move_pos.nil?
        move_pos = get_first_available_move
      end
    end
    move move_pos, 'O'
  end

  def move(pos, piece)
    @board.delete_at(pos)
    @board.insert(pos, piece)
  end

  def display
    print "\n\n"
    print " #{@board[0]} |"
    print " #{@board[1]} |"
    print " #{@board[2]}"
    print "\n---+---+---\n"
    print " #{@board[3]} |"
    print " #{@board[4]} |"
    print " #{@board[5]}"
    print "\n---+---+---\n"
    print " #{@board[6]} |"
    print " #{@board[7]} |"
    print " #{@board[8]}"
    print "\n\n"
  end

  def someone_win?
    symbol = nil
    array = Patterns::Won.find { |p| p.first =~ @board.join }
    unless array.nil?
      symbol = (array.last === :X) ? 'X' : 'O'
    end
    symbol
  end

  def get_winning_pattern_move
    move_pos = nil
    array = Patterns::Winning.find { |p| p.first =~ @board.join }
    unless array.nil?
      move_pos = array.last
    end
    move_pos
  end

  def get_blocking_pattern_move
    move_pos = nil
    array = Patterns::Blocking.find { |p| p.first =~ @board.join }
    unless array.nil?
      move_pos = array.last
    end
    move_pos
  end

  def get_first_available_move
    if @board.at(4) == ' '
      move_pos = 4
    else
      move_pos = @board.index(' ')
    end
    move_pos
  end
end

if $0 == __FILE__
  print "\n\nYou are X.  Please go first."
  TicTacToe.new.play
end