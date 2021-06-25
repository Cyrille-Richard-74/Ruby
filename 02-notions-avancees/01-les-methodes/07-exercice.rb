=begin
    - Écrivez un programme JavaScript pour renvoyer le reste de deux nombres. Il existe un seul opérateur en JavaScript, capable de fournir le reste d’une division. Deux nombres sont transmis comme paramètres. Le premier paramètre divisé par le deuxième paramètre.
    - Examples :
        resteDiv(1, 3) -> 1
        resteDiv(2, 4) -> 2
        resteDiv(3, 3) -> 0
=end

def resteDiv(a, b)
    return a.remainder b
end

puts resteDiv(1, 3)
puts resteDiv(2, 4)
puts resteDiv(3, 3)