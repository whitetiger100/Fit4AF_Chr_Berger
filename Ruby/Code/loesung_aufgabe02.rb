def say_hello(name, health=100)
	"ich bin #{name.capitalize} mit einem Wert von #{health} um #{time}"
end

def time
	current_time = Time.new
	current_weekday = current_time.strftime("%R")
end

puts say_hello("ludwig")