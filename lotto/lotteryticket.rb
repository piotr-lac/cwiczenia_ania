require "./randomsix.rb"

class LotteryTicket
	attr_accessor :ticket_numbers
	def initialize(*given_numbers) 
		@ticket_numbers = given_numbers 
		@ticket_numbers = RandomSix.new.random_score if @ticket_numbers.length < 6
	end #end of initialize	
end #end of class




