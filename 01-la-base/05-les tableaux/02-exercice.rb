=begin
    - Demander à l'utilisateur combien de cases il veut pour un tableau, le nombre maximum de cases étant de 10.
    - Si le nombre est supérieur à 10 lui redemander un nombre de cases.
    - Demander à l'utilisateur les valeurs de son tableau.
    - Afficher les valeurs de son tableau
=end

array_cases = 11
custom_array = []

while array_cases > 10
    print "Saisissez le nombre de case(s) à votre tableau : "
    array_cases = gets.chomp.to_i
end

array_cases.times { |i| 
    print "Entrez un nombre : "
    number = gets.chomp.to_i
    custom_array += [number]
}

array_cases.times { |n| puts "Votre tableau contient #{custom_array[n]}." }