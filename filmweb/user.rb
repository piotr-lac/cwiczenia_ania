class User
	attr_accessor :nickname
	def initialize(nickname)
		@nickname = nickname
	end 

	def likes(base,film)
		base.like_film(self,film)
	end 

	def dislikes(base,film)
		base.dislike_film(self,film)
	end 

	def adds_film(base,film)
		base.add_film(self,film)
	end 
end 

