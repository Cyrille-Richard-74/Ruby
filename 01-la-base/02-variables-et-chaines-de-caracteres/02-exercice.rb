=begin
    Ennoncée :
         - Demander à l'utilisateur son nom et son prénom.
         - Afficher Bonjour 'nom' 'prénom' avec un retour à la ligne
=end

print "Veuillez saisir votre nom : "
name = gets.chomp

print "Veuillez saisir votre prénom : "
firstname = gets.chomp

puts "Bonjour #{name} #{firstname}"