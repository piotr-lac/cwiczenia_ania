require "./user.rb"
require "./film.rb"

class FilmBase
	attr_accessor :film_base, :user_base, :pomoc
	def initialize
		@film_base = []
		@user_base = []
		@pomoc = []
	end 
	
	def add_user(user)
		@user_base << user
	end 

	def like_film(user,film)
		if @user_base.include?(user) && @film_base.include?(film)
			liking_film(film)
		else
			puts "Sorry. Unknown user can not like film or film is not in our webbase"
		end 
	end 

	def dislike_film(user,film)
		if @user_base.include?(user) && @film_base.include?(film)
			disliking_film(film)
		else
			puts "Sorry. Unknown user can not dislike film or film is not in our webbase"
		end 
	end 

	def add_film(user,film)
		if @user_base.include?(user)
			adding_film(film)
		else
			puts "Sorry. Uknown user can not add any film to the webbase"
		end 
	end 

	def best
		likes= []
		@film_base.each{|film| likes << film.likes}
		@film_base.select {|film| p film.title if film.likes == likes.max}
	end 

	def worst
		dislikes= []
		@film_base.each{|film| dislikes << film.dislikes}
		@film_base.select {|film| p film.title if film.dislikes == dislikes.max}
	end 

	def ranking_top
		(@film_base.sort_by {|film| film.likes}).reverse.each {|film| puts "'#{film.title}' - likes: #{film.likes}" }
	end 

	def newest
		10.times do |i|
		p "#{i+1}. #{@film_base.reverse[i].title}" if !@film_base.reverse[i].nil?		
		end 
	end 
	
	private

	def adding_film(film)
		@film_base << film
	end 

	def liking_film(film)
		film.likes +=1
	end 

	def disliking_film(film)
		film.dislikes +=1
	end 

end 

