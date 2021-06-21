=begin
    - Demander à l'utilisateur un entier.
    - Afficher un triangle de n lignes composées de n *.
=end

print "Veuillez saisir un nombre : "
n = gets.chomp.to_i

if n > 0
1.upto(n) do |k|
    k.times { print "*" }
    puts
end
else
    puts "Veuillez saisir un nombre positif."
end
