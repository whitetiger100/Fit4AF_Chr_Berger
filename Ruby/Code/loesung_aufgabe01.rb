name1 = "larry"
health = 60
puts name1+"'s health is "+health.to_s
puts health*3
puts health.to_f/9
puts health/9
puts "\n\tPlayers:\n\t\tlarry\n\t\tcurly\n\t\tmoe"
n1 = "Larry"
n2 = "Curly"
n3 = "Moe"
n4 = "Shemp"
puts "\n"
puts n1+" has a health of "+health.to_s+"."
puts n2+" has a health of 125."
status = "Moe has a health of 100."
puts status.center(50, "*")
puts status.center(50, "*")
puts "#{n4.capitalize.ljust(30,'.')} 90 health\n#{n4.capitalize.ljust(30,'.')} 90 health"
puts "Players:\n\t"+n1+"\n\t"+n2+"\n\t"+n3
puts "The game started on #{Time.new}"