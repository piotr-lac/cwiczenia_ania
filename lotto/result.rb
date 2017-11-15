require "./draw.rb"
require "./lotteryticket.rb"


class Result
	attr_accessor :base, :win_array, :prize, :jackpot, :ticket_array, :win_numbers
	def initialize(ticket)
		@base = Draw.new.draw_numbers
		@ticket_array = ticket
		@jackpot = 1000000
		@prize = 0
		compare
	end	#end of initialize

	def compare
		@win_array = @base & @ticket_array
		@win_numbers = @win_array.length

		case @win_numbers
			when 6 then @prize = @jackpot 
			when 5 then @prize = @jackpot * 0.5
			when 4 then @prize = @jackpot * 0.25
			when 3 then @prize = @jackpot * 0.1			
		end #end of case
	end	#end of compare
end	#end of class


