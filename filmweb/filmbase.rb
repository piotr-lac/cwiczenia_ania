require "./user.rb"
require "./film.rb"

class FilmBase
	attr_accessor :film_base, :user_base, :pomoc
	def initialize
		@film_base = []
		@user_base = []
		@pomoc = []
	end #end of initialize
	
	def add_user(user)
		@user_base << user
	end #end of add_user

	def like_film(user,film)
		if @user_base.include?(user) && @film_base.include?(film)
			liking_film(film)
		else
			puts "Sorry, Uknown user can not like film or film is not in our webbase"
		end #end of if
	end #end of like_film

	def dislike_film(user,film)
		if @user_base.include?(user) && @film_base.include?(film)
			disliking_film(film)
		else
			puts "Sorry, Uknown user can not dislike film or film is not in our webbase"
		end #end of if
	end #end of dislike_film

	def add_film(user,film)
		if @user_base.include?(user)
			adding_film(film)
		else
			puts "Sorry. Uknown user can not add any film to the webbase"
		end #end of if
	end #end of add_film

	# def best
	# 	@film_base.select {|film| film.likes.max}
	# end #end of best 
	
	private

	def adding_film(film)
		@film_base << film
	end #end of add_film

	def liking_film(film)
		film.likes +=1
	end #end of liking_film

	def disliking_film(film)
		film.dislikes +=1
	end #end of disliking_film

end #end of class

