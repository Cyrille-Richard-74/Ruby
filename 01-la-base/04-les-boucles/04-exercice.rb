=begin
    - Demander à l'utilisateur un entier.
    - Afficher ce nombre à l'envers.
=end

print "Veuillez saisir un nombre : "
n = gets.chomp.to_i

until n == 0
    print n % 10
    n = n / 10
end
