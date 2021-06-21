=begin
    - Demander à l'utilisateur un entier.
    - Afficher la somme des nombres de 1 à n, si n est positif, et retourner une erreur sinon.
=end

print "Veuillez saisir un nombre : "
n = gets.chomp.to_i
# n = 2

=begin
if n > 0 
    somme = 0
    1.upto(n) do |k|
        somme += k
    end
    print somme
else
    puts "Veuillez saisir un nombre positif"
end
=end

if n > 0
    somme = 0
    1.upto(n) { |k| somme += k }
    print somme
else
    puts "Veuillez saisir un nombre positif."
end

# Variante simplifiée
