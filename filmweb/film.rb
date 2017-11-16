class Film
	attr_accessor :title, :year, :director, :likes, :dislikes
	def initialize(title)
		@title = title
		@year = 0
		@director = nil
		@likes = 0
		@dislikes = 0
	end 
end 