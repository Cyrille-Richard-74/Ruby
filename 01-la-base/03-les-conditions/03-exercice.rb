=begin
    - Demander à l'utilisateur de saisir 3 nombres.
    - Afficher les 3 nombres dans l'ordre croissant.    
=end

print "Saisir un premier nombre : "
nombre1 = gets.chomp.to_i

print "Saisir un second nombre : "
nombre2 = gets.chomp.to_i

print "Saisir un troisième nombre : "
nombre3 = gets.chomp.to_i

if nombre1 > nombre2
    tmp = nombre1
    nombre1 = nombre2
    nombre2 = tmp
end
if nombre2 > nombre3
    tmp = nombre2
    nombre2 = nombre3
    nombre3 = tmp
end
if nombre1 > nombre2
    tmp = nombre1
    nombre1 = nombre2
    nombre2 = tmp
end
puts nombre1, nombre2, nombre3
