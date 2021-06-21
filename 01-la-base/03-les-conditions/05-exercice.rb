=begin
    - Demander à l'utilisateur prix HT.
    - Demander à l'utilisateur de rentrer un code compris entre 1 et 3.
    - code 1 = TVA à 20%, code 2 = TVA à 10%, code 3 = TVA à 5.5%.
    - Afficher le prix TTC
=end

TVA1 = 20.0
TVA2 = 10.0
TVA3 = 5.5

print "Veuillez saisir prix HT : "
priceHT = gets.chomp.to_f

print "Veuillez saisir un code TVA (1 : 20%, 2 : 10%, 3 : 5.5%) : "
code = gets.chomp.to_i

case code
when 1
    priceTTC = priceHT + TVA1 / 100
    puts "L'article à #{priceHT} HT, vaut #{priceTTC} TTC."
when 2
    priceTTC = priceHT + TVA2 / 100
    puts "L'article à #{priceHT} HT, vaut #{priceTTC} TTC."
when 3
    priceTTC = priceHT + TVA3 / 100
    puts "L'article à #{priceHT} HT, vaut #{priceTTC} TTC."
else
    puts "Le code saisie est incorrect."
end

