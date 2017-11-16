class User
	attr_accessor :nickname
	def initialize(nickname)
		@nickname = nickname
	end #end of initialize

	def likes(film)
		film.likes += 1
	end #end of likes

	def dislikes(film)
		film.dislikes +=1
	end #end of dislikes

	def adds_film(base,film)
		base.add_film(itself,film)
	end #end of adds_film
end #end of user

