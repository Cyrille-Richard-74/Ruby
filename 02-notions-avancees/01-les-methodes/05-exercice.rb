=begin
    - Ecrivez une fonction qui prend la base et la hauteur d'un triangle et retourne sa surface.
    - Notez que la surface d'un triangle = (base * hauteur) / 2
    - Examples :
        getSurface(8, 2) -> 8
        getSurface(7, 3) -> 10
=end

def getSurface(b, h)
    return (b* h) / 2
end

puts getSurface(8, 2)
puts getSurface(7, 3)