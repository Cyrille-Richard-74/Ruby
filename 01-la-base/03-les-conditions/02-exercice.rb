=begin
    - Demander à l'utilisateur de saisir 3 nombres.
    - Afficher le plus grand des 3 nombres.    
=end

print "Saisir un premier nombre : "
nombre = gets.chomp.to_i
max = nombre

print "Saisir un second nombre : "
nombre = gets.chomp.to_i
max = nombre if max < nombre

print "Saisir un troisième nombre : "
nombre = gets.chomp.to_i
max = nombre if max < nombre

puts "Le nombre le plus grand saisie est le #{max}."