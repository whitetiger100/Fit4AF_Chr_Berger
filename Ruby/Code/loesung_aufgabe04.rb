# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge 
#    des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score

class Player
	attr_accessor :health

	def initialize(pname, phealth=100)
		@name = pname.capitalize
		@health = phealth
	end

	def say_hello
		"Ich bin #{@name} mit einem Wert von #{score}"
	end

	def to_s
		say_hello
	end

	def blam
		@health = @health + 10
		puts "#{@name} got blamed"
	end
	
	def w00t
		@health = @health - 10
		puts "#{@name} got w00ted"
	end

	def score
		@health + @name.length
	end
end

	player1 = Player.new("John",85)

	player2 = Player.new("Jack")

	puts player1

	puts player2