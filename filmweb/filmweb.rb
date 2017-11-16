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

my_base = FilmBase.new
me = User.new("Piotr")
film_1 = Film.new("Mis")

my_base.add_user(me)

me.adds_film(my_base,film_1)
# p my_base.film_base
# p my_base.user_base.include?(me)