class User
	attr_accessor :nickname
	def initialize(nickname)
		@nickname = nickname
	end #end of initialize

	def likes(base,film)
		base.like_film(self,film)
	end #end of likes

	def dislikes(base,film)
		base.dislike_film(self,film)
	end #end of dislikes

	def adds_film(base,film)
		base.add_film(self,film)
	end #end of adds_film
end #end of user

