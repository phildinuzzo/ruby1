#!/usr/bin/env ruby

require 'gtk'

class Calculator

  MAX_DIGIT = 12
  ADD = "add"; SUB = "sub"; MUL = "mul"; DIV = "div"

  def initialize
    num = ""; dot = false	# 組み立て中の数
    erred = false		# エラー状態か？
    operation = nil		# ∈ {nil, ADD, SUB, MUL, DIV}
    operandl = 0.0		# 左オペランド
    window = Gtk::Window.new(Gtk::WINDOW_TOPLEVEL)
    window.set_title('calculator')
    window.signal_connect('destroy') {Gtk.main_quit}
    window.border_width = 5
    table = Gtk::Table.new(5, 5, true)
    window.add(table)
    table.show
    disp = Gtk::Entry.new	# 電卓の表示部
    disp.set_editable(false)
    table.attach(disp, 0, 5, 0, 1)
    disp.show

    digit_clicked = proc {|widget, digit|
      unless erred
	if disp.get_text.length < MAX_DIGIT
	  num = num + digit.to_s
	  disp.set_text(num)
	end
      end
    }

    dot_clicked = proc {
      unless erred
	if disp.get_text.length < MAX_DIGIT - 1 and not dot
	  dot = true
	  num = num + '.'
	  disp.set_text(num)
	end
      end
    }

    equ_clicked = proc {
      unless erred
	x = Float(disp.get_text)
	case operation
	when ADD
	  answer = operandl + x
	when SUB
	  answer = operandl - x
	when MUL
	  answer = operandl * x
	when DIV
	  if x == 0.0
	    disp.set_text('Error')
	    erred = true
	  else
	    answer = operandl / x
	  end
	end
	unless erred
	  num = ''; dot = false
	  unless operation == nil
	    operation = nil
	    disp.set_text(answer.to_s)
	  end
	end
      end
    }

    sign_clicked = proc {
      unless erred
	x = Float(disp.get_text)
	answer = -x
	disp.set_text(answer.to_s)
	num = ''; dot = false
      end
    }

    op_clicked = proc {|widget, opcode|
      unless num == '' then equ_clicked.call end
      unless erred
	operation = opcode
	operandl = Float(disp.get_text)
	num = ''; dot = false
      end
    }

    cle_clicked = proc {
      unless erred
	if num == '' then operation = nil end
	disp.set_text('0')
	num = ''; dot = false
      end
    }

    clr_clicked = proc {
      erred = false
      operation = nil
      cle_clicked.call
    }

    [
      ["7",  0, 1, 1, 2, digit_clicked, 7],
      ["8",  1, 2, 1, 2, digit_clicked, 8],
      ["9",  2, 3, 1, 2, digit_clicked, 9],
      ["÷", 3, 4, 1, 2, op_clicked, DIV],
      ["C",  4, 5, 1, 2, clr_clicked, nil],
      ["4",  0, 1, 2, 3, digit_clicked, 4],
      ["5",  1, 2, 2, 3, digit_clicked, 5],
      ["6",  2, 3, 2, 3, digit_clicked, 6],
      ["×", 3, 4, 2, 3, op_clicked, MUL],
      ["CE", 4, 5, 2, 3, cle_clicked, nil],
      ["1",  0, 1, 3, 4, digit_clicked, 1],
      ["2",  1, 2, 3, 4, digit_clicked, 2],
      ["3",  2, 3, 3, 4, digit_clicked, 3],
      ["−", 3, 4, 3, 4, op_clicked, SUB],
      ["＝", 4, 5, 3, 5, equ_clicked, nil],
      ["0",  0, 1, 4, 5, digit_clicked, 0],
      [".",  1, 2, 4, 5, dot_clicked, nil],
      ["+/-",2, 3, 4, 5, sign_clicked, nil],
      ["＋", 3, 4, 4, 5, op_clicked, ADD]
    ].each {|label, la, ra, ta, ba, func, arg|
      button = Gtk::Button.new(label)
      table.attach(button, la, ra, ta, ba)
      button.signal_connect('clicked', arg, &func)
      button.show
    }
    window.show
    cle_clicked.call
  end

end

if __FILE__ == $0
  Calculator.new
  Gtk.main
end
