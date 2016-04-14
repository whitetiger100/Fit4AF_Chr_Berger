# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
# a. geben Sie diese Zahlen in einem Block aus
# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern. 
# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel

puts "1.----------------------------------------"
array_var = (15..20).to_a

puts "a.----------------------------------------"
array_var.each do |val|
	puts val
end

puts "b.----------------------------------------"
array_var.each_with_index do |val,key|			#|val,key| andersrum als beim Hash, da gilt |key,val|
	puts "Indexeintrag #{key}: #{val}"
end

puts "c.----------------------------------------"
hash_1 = Hash.new
array_var.each do |val|
	hash_1[val] = rand(100..200)
end
puts hash_1

puts "d.----------------------------------------"
hash_1.each do |key,val|
	puts "Index: #{key} - Wert: #{val}"
end

puts "e.----------------------------------------"
hash_1.each do |key,val|
	if val > 150
	puts "Index: #{key} - Wert: #{val}.WOW"
	else
	puts "Index: #{key} - Wert: #{val}"
	end
end

puts "f.----------------------------------------"
array_var2 = []
array_var.each do |val|
	wurzel = val * val
	array_var2 << wurzel
end
puts array_var2

puts "g.----------------------------------------"
hash_2 = Hash.new
array_var.each do |val|
	hash_2[val] = val * val
end
hash_2.each do |key,val|
	puts "Index: #{key} - Wert: #{val}"
end