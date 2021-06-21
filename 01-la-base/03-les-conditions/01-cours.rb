# Opérateurs de comparaison

#######################################
# Opérateur # Signification           #
#######################################
# <         # Strictement inférieur à #
# >         # Strictement supérieur à #
# <=        # Inférieur ou égal à     #
# >=        # Supérieur ou égal à     #
# ==        # Egal à                  #
# !=        # Différent de            #
#######################################

 2 > 1 # true
 3 > 6.0 # false
 'Trois' == 'Trois' # true

 # autres opérateurs de comparaison

#######################################
# Opérateur # Signification           #
#######################################
# ||        # ou                      #
# &&        # et                      #
# !         # non                     #
#######################################

    # Mise entre parenthèse des opérateur de comparaison

(1 == 1 || 2 == 3) && 3 == 4 # false
1 == 1 || (2 == 3 && 3 == 4) # false

########################################################

# if
print "Veuillez saisir votre âge : "
if age < 18
    puts "Vous êtes mineur."
end
    # A noter que cette écriture peut être simplifiée
puts "Vous êtes mineur." if age < 18


# if-else
print "Veuillez saisir votre âge : "
age = gets.chomp.to_i

if age < 18
    puts "Vous êtes mineur."
else
    puts "Vous êtes majeur."
end


# elsif
print "Veuillez saisir votre âge : "
age = gets.chomp.to_i

if age < 18
    puts "Vous êtes mineur."
elsif age > 80
    puts "Vous êtes sénior."
else
    puts "Vous êtes majeur et votre âge est inférieur à 80 ans."
end


# unless
    # C'est la condition inverse de if
print "Veuillez saisir votre âge : "
age = gets.chomp.to_i

unless age < 18
    puts "Vous êtes majeur."
else
    puts "vous êtes mineur."
end

# Les bonnes pratiques :

### Mauvais
if !condition
    # Instructions
end
### Correct
unless condition
    # Instructions
end

### mauvais
unless condition
    # Autres instructions
else  
    # Instructions
end
### Correct
if condition
    # Instructions
else
    # Autres instructions
end

# case when
nombre = gets.chomp

case nombre     # On teste la valeur du nombre
when 'Un'       # Si c'est 'Un'
    puts 1
when 'Deux'     # Si c'est 'Deux'
    puts 2
when 'Trois'    # Si c'est 'Trois'
    puts 3
end

# else peut être ajouté si aucun n'est cas n'est respecté
nombre = gets.chomp

case nombre
when 'Un'
    puts 1
when 'Deux'
    puts 2
when 'Trois'
    puts 3
else  
    puts "La saisie n'est pas bonne."
end

# Ecriture simplifiée
nombre = gets.chomp

case nombre
when 'Un' then puts 1
when 'Deux' then puts 2
when 'Trois' then puts 3
else puts "La sais n'est pas bonne."
end

# Les intervalles case when
print "Veuillez saisir une note : "
note = gets.chomp.to_i

case note
when 0..6 then puts "Vous n'avez pas réussi l'examen."
when 6..12 then puts "Vous avez réussi l'examen."
when 12..14 then puts "Vous avez réussi l'exament avec mention \"Assez bien\"."
when 14..16 then puts "Vous avez réussi l'exament avec mention \"Bien\"."
when 16..20 then puts "Vous avez réussi l'exament avec mention \"Très bien\"."
else puts "La note saisie est incorrecte."
end
# Les intervalles peuvent également contenir des valeurs flottantes

# Les conditions ternaires
print "Veuillez saisir votre âge : "
age = gets.chomp.to_i

age < 18 ? puts "Vous êtes mineur." : puts "Vous êtes majeur."

# Condition ternaire imbriquée
print "Veuillez saisir votre âge : "
age = gets.chomp.to_i

age < 18 ? puts "Vous êtes mineur." : (age < 80 puts "Vous êtes sénior" ? puts "Vous êtes majeur.")