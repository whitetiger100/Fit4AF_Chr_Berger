
class Kredit
	attr_accessor :wert

	def initialize(pwert)
		@wert = pwert
	end
end
kredit_1 = Kredit.new(5000)
kredit_2 = Kredit.new(2000)


class Kunde
	attr_accessor :name, :gehalt
	attr_writer :adresse

	def initialize(pname)
		@name = pname
		@kredite = []
	end

	def set_kredit(pkredit)
		@kredite << pkredit
	end

	def show_kredite
		puts "#{@name}, #{@adresse} hat folgende Kredite:"
		@kredite.each.with_index(1) do |k,i|
			puts "Kredit #{i}: #{k.wert}"
		end
		#\nKredit 1: #{@kredite[0].wert} \nKredit 2: #{@kredite[1].wert}"
	end

	def to_s
		show_kredit
	end
end

kunde_1 = Kunde.new("Theo Sommer")
kunde_1.name = "Theo Sonnenschein"
puts kunde_1.name
kunde_1.adresse = "Hermelinweg 11, 22159 Hamburg"
kunde_1.set_kredit(kredit_1)
kunde_1.set_kredit(kredit_2)
kunde_1.show_kredite