=begin
    Ennoncée :
        - Demander à l'utilisateur 2 nombres (x = 6 et y = 4).
        - Afficher sur différentes lignes différentes:
            - Le résultat de l'addition : x + y = z.
            - Le résultat de la soustraction x - y = z.
            - Le résultat de la multiplication x * y = z.
            - Le résultat de la division x / y = z.
        
=end

print "Saisissez un chiffre : "
x = gets.chomp.to_f

print "Saisissez un second chiffre : "
y = gets.chomp.to_f

puts "- Le résultat de l'addition de #{x} + #{y} est égal à #{x + y}"
puts "- Le résultat de la soustraction de #{x} - #{y} est égal à #{x - y}"
puts "- Le résultat de la multiplication de #{x} x #{y} est égal à #{x * y}"
puts "- Le résultat de la division de #{x} / #{y} est égal à #{x / y}"