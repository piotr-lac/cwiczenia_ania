class RandomSix
	attr_accessor :random_score
	def initialize
		@random_score = []
		6.times do make_random
		end
	end	#end of initialize

	def make_random		
		number = rand(48)+1
		if @random_score.include?(number)
			make_random
		else
			@random_score << number
		end	#end of if
		@random_score.sort!
	end	#end of make_random 
end #end of class


