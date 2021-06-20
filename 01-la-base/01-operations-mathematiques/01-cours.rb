=begin
Les types primaires
    Les entiers
    Les chaines de caractères
    Les booléens
=end

# Les entiers permettent de faire des opérations arithmétique comme sur une calculatrice et respecte les mêmes règles de proiorités.
# On peut affecter des valeurs à une variable et effectuer des opérations entre elles
3 + 2 # 5
2 * 3 + 5 # 11
2 * (3 + 5) # 16
(6 - 2) * (8 + 25) # 132

x = 4
y = 7
x + y # 11

######################################################
# Action      # Code   # Affichage                   #
######################################################
# Additionner # 3 + 2  # 5                           #
######################################################
# Soustraire  # 3 - 2  # 1                           #
######################################################
# Multiplier  # 3 * 2  # 6                           #
######################################################
# Diviser     # 3 / 2  # 1                           #
######################################################
# Modulo      # 3 % 2  # 1 (Le reste de la division) #
######################################################
# Puissance   # 2 ** 2 # 4                           #
######################################################

# Le sucre syntaxique

##########################
# Opération # Equivalent #
##########################
# x = x + 4 # x += 4     #
##########################
# x = x - 4 # x -= 4     #
##########################
# x = x * 4 # x *= 4     #
##########################
# x = x / 4 # x /= 4     #
##########################
# x = x % 4 # x %= 4     #
##########################

# Le symbole _ peut être utilisé dans un nombre, 12_3_2 = 1232, 10_000 = 10000

# Noter un nombre en binaire avec le préfixe 0b
0d10 = 10

# Noter un nombre en octal avec le préfixe 0o
0o10 = 8

# Noter un nombre en hexadécimal avec le préfixe 0x
0x10 = 16

# Noter un nombre en décimal avec le préfixe 0d
0d10 = 10

# Entiers et flottants
# Si dans une opération arithmétique 2 chiffres sont entiers, le résultat sera un entier même dans el cas d'une division