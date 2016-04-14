# a. erstellen Sie eine Klasse Game mit einem Konstruktor,
# 		der eine Instanzvariable title anlegt und fuellt und ein leeres Array mit dem Name Player enthaelt.
# b. die Klasse Game hat eine Methode add_player der ein SPieler hinzugefuegt wird
# c. eine Methode play erzeugt folgenden Ausdruck:
# 	There are 3 players in Knuckleheads: 
# 	I'm Moe with a health of 100 and a score of 103.
# 	I'm Larry with a health of 60 and a score of 65.
# 	I'm Curly with a health of 125 and a score of 130.
# 	Moe got blammed!
# 	Moe got w00ted!
# 	Moe got w00ted!
# 	I'm Moe with a health of 120 and a score of 123.
# 	Larry got blammed!
# 	Larry got w00ted!
# 	Larry got w00ted!
# 	I'm Larry with a health of 80 and a score of 85.
# 	Curly got blammed!
# 	Curly got w00ted!
# 	Curly got w00ted!
# 	I'm Curly with a health of 145 and a score of 150.

class Game
	def initialize(title)
		@title = title
		@player = []
	end
	def add_player(name)
		@player << name
	end
	def play
		puts "There are #{@player.count} players in #{@title}:"
		@player.each do |status|
			puts status
		end
		@player.each do |change|
			change.blam
			change.woot
			change.woot
			puts change
		end
	end
end

class Player

	attr_reader :health
	attr_accessor :name
	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end
	def score
		@health + @name.length
	end
	def say_hello
		"I'm #{@name} with a health of #{@health} and a score of #{score}."
	end
	def blam
		@health += 10
		puts "#{@name} got blammed!"
	end
	def woot
		@health -= 10
		puts "#{@name} got w00ted!"
	end
	def to_s
		say_hello
	end
end

player1 = Player.new("Moe")
player2 = Player.new("Larry", 60)
player3 = Player.new("Curly", 125)
game = Game.new("Knuckleheads")
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)

game.play