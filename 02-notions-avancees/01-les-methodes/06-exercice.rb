=begin
    - Ecrivez une fonction qui convertit les heures en secondes.
    - Notez qu'il y a 60 secondes en une minute et 60 minutes en une heure.
    - Exemples :
        heureSeconde(1) -> 3600
        heureSeconde(5) -> 18000
=end

def heureSeconde(h)
    return h * 3600
end

puts heureSeconde(1)
puts heureSeconde(3)