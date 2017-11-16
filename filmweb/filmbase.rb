require "./user.rb"

class FilmBase
	attr_accessor :film_base, :user_base
	def initialize
		@film_base = []
		@user_base = []
	end #end of initialize
	
	def add_user(user)
		@user_base << user
	end #end of add_user

	def add_film(user,film)
		if @film_base.include?(user)
			adding_film(film)
		else
			puts "Uknown user can not add any film to the filmbase"
		end #end of if
	end #end of add_film
	
	private

	def adding_film(film)
		@film_base << film
	end #end of add_film
end #end of class

