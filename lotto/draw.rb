require "./randomsix.rb"

class Draw
	attr_accessor :draw_numbers
	def initialize
		@draw_numbers = RandomSix.new.random_score	
	end #end of initialize
end #end of class