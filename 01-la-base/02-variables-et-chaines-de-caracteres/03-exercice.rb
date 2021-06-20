=begin
    Ennoncée :
        - Demander à l'utilisateur 2 nombres x et y.
        - Echanger leurs valeurs et afficher la nouvelle valeur
=end

print "Saisir un premier nombre : "
x = gets.chomp

print "Saisir un deuxième nombre : "
y = gets.chomp

z = x
x = y 
y = z

puts "L'échange a été fait : x vaut #{x} et y vaut #{y}"