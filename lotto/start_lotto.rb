# Napisz program, który symuluje losowanie lotto. Program powinien umożliwiać:
# - stworzenie losowania, z określoną kumulacją pieniędzy i wygenerowanie 6 losowych liczb z zakresu 1-49.
# - stworzenie kuponu własnoręcznie (~ wypełniany ręcznie)
# - stworzenie kuponu losowego (~ wypełniany przez automat).
# - sprawdzenie ile dany kupon wygrał w tym losowaniu - tak + ile?/nie
# Wysokość wygranej zależy od liczby trafionych liczb i kumulacji (proporcje załóż jakie chcesz :))


require "./lotteryticket.rb"
require "./draw.rb"
require "./result.rb"

class Lotto
	attr_accessor :my_ticket, :my_numbers, :option, :your_result
	def initialize
		
		@option = "Yours"
		my_numbers = []
		puts "3 winning numbers give 10% Jackpot"
		puts "4 winning numbers give 25% Jackpot"
		puts "5 winning numbers give 50% Jackpot"
		puts "6 winning numbers give 100% Jackpot"
		i = 1
		loop do 
			puts "give (#{i}) number (from 1 to 49) or type random for auto numbers"
			my_numbers << gets.chomp
			break if my_numbers.length == 6 || my_numbers.include?("random")
			i+=1
		end #end of loop

		if my_numbers.include?("random")
			@my_ticket = LotteryTicket.new
			@option = "Random"
		else
		a = my_numbers[0].to_i
		b = my_numbers[1].to_i 
		c = my_numbers[2].to_i 
		d = my_numbers[3].to_i 
		e = my_numbers[4].to_i 
		f = my_numbers[5].to_i 
		
		@my_ticket = LotteryTicket.new(a,b,c,d,e,f) #ticket with my numbers
		end #end of if
		@your_result = Result.new(@my_ticket.ticket_numbers)
		show
	end #end of initialize

	def show
		puts "#{@option} numbers on your coupon are : #{@my_ticket.ticket_numbers.join("-")}"
		puts "The winning numbers are #{@your_result.base.join("-")}"
		puts "Common numbers are: #{@your_result.win_array.join("-")}"
		puts "Main jackpot is #{your_result.jackpot} $"
		puts "You've won : #{your_result.prize} $"
		puts "enter key ..."
		gets.chomp
	end #end of show
end #end of class

loop do 
	system "clear"
	puts "Welcome to the Ruby Lottery (6 numbers from 49) !!!"
	puts "Enter key to play or type exit to exit the game"
	x = gets.chomp
	break if x.downcase == "exit" 
	Lotto.new
end








