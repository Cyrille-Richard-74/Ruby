=begin
    - Ecrivez une fonction qui prend un nombre entier de minutes et le convertit en secondes
    - Exemple :
        minuteToSecond(4) -> 240
        minuteToSecond(3) -> 180
=end

def minuteToSecond(minute)
    return minute * 60
end

puts minuteToSecond(4)
puts minuteToSecond(3)