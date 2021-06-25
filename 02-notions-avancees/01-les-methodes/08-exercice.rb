=begin
    - Créez une fonction qui renvoie TRUE si un entier est divisible par 5, sinon retournez FALSE.
    - Examples:
        isDivisible(5) ➞ true
        isDivisible(10) ➞ true
        isDivisible(6) ➞ false
=end

def isDivisible(x)
    (x % 5).zero?
end

puts isDivisible(5)
puts isDivisible(10)
puts isDivisible(6)