=begin
    - Demander à l'utilisateur une année.
    - Dire si l'année est bisextile ou non.
    - Une année est bissextile si elle est divible par 400 ou divisible par 4.
=end

print "Veuillez saisir une année : "
year = gets.chomp.to_i

if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
    puts "L'année #{year} est une année bissextile"
else
    puts "L'année #{year} n'est pas une année bissextile"
end
