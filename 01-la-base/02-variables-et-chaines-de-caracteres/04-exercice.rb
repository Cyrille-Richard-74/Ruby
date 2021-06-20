=begin
    Ennoncée :
        - Demander à l'utilisateur sont âge en années (entier).
        - Afficher sur différentes lignes différentes:
            - Son âge en année.
            - Son âge en jours (on considère que toutes les années ont 365 jours).
            - Son âge en heures.
            - Son âge en minutes.
            - Son âge en secondes.
=end

print "Saisissez votre âge (ans) : "
year = gets.chomp.to_i

day = year * 365
hour = day * 24
minute = hour * 60
second = minute * 60

puts "- Vous avez #{year} ans"
puts "- Vous avez #{day} jours"
puts "- Vous avez #{hour} heures"
puts "- Vous avez #{minute} minutes"
puts "- Vous avez #{second} secondes"
