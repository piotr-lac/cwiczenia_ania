# Napisz program odzworowujący Filmweb.
# Program ma umożliwiać:
# - stworzenie bazy filmów
# - tworzenie filmów i dodawanie ich do bazy
# - tworzenie użytkowników i dodawanie ich jako użytkowników bazy (coś podobnego jak było z biblioteką)

# Film posiada tytuł, rok, reżysera i liczbę lajków i liczbę dislajków.
# Użytkownika posiada nickname. 
# Możliwość polajkowania i dislajkowania filmu przez użytkownika (tylko użytkownik Filmwebu może to zrobić, 
# jeśli próbuje to zrobić user, który nie należy do Filmwebu wyświetl komunikat, że nie wolno) 
# Możliwość wyświetlenia najlepiej ocenianego filmu, najgorzej ocenianego filmu.
# Możliwość wyświetlenia wszystkich filmów, posortowanych wg liczby lajków malejąco.
# Możliwość wyświetlenia 10 najnowszych filmów.

require "./filmbase.rb"
require "./user.rb"
require "./film.rb"


#tworzymy instancje class:
my_base = FilmBase.new
me = User.new("Piotr")
michael = User.new("Michal")
film_1 = Film.new("Matrix")
film_2 = Film.new("Matrix Rewolucje")
film_3 = Film.new("Matrix Reaktywacja")

#dodajemy tylko jednego uzytkownika do bazy użytkowników
my_base.add_user(me)

# zarejestrowany w bazie uzytkownikow uzytkownik dodaje film do bazy filmow
me.adds_film(my_base,film_1)
me.adds_film(my_base,film_2)

# niezarejestrowany w bazie uzytkonk probuje dodac film do bazy 
michael.adds_film(my_base,film_3) # => "Sorry. Uknown user can not add any film to the webbase"

# baza nie zawiera tego ostatnigo filmu tylko dwa poprzednio dodane
p my_base.film_base

# zarejestrowany user dodaje ostatni trzeci film do bazy
me.adds_film(my_base,film_3)

#baza filmow zawiera teraz wszyskie trzy filmy
p my_base.film_base.length #=> 3

# zarejestrowany uzytkonik lubi film
me.likes(my_base,film_1)

# niezarejestrowany uzytkonik probuje polubic film. Niepowodzenie
michael.likes(my_base,film_2) #=> "Sorry, Uknown user can not like film or film is not in our webbase"

# tak samo dziala dla dislike'ow
me.dislikes(my_base,film_2)

# baza moze pokazac najlepszy film. Jezeli jest kilka z ta sama iloscia like'ow to pokaze je wszystkie
my_base.best

# tak samo dziala dla najgorszego filmu
my_base.worst

# pokazanie posegregowanych filmow wg ilosci like'ow
my_base.ranking_top

# pokzanie filmow najnowszych w bazie, czyli kolejnosc odwrotna do dodoawania w bazie
my_base.newest
