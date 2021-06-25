=begin
    - Créez une fonction qui prend un nombre et renvoie TRUE s’il est inférieur ou égal à zéro, sinon retournez FALSE.
    - Examples :
        checkNbr(1) ➞ false
        checkNbr(-1) ➞ true
        checkNbr(0) ➞ true
=end

def checkNbr(x)
    return x <= 0
end

puts checkNbr(1)
puts checkNbr(-1)
puts checkNbr(0)