# Déclaration de variables et opérations

# La déclaration d'une variable se fait grâce à un nom, le signe = et la valeur que l'on veut lui attribuer
# nomDeLaVariable = "une_valeur"

# On peut manipuler les variables
x = 2
y = 3
# x + y => 5

# On peut assigner une autre valeur à une variable
x = 3 # 3
x = 5 # 5

# On peut assigner à une variable, une opération arithmétique de 2 ou plusieurs variables
a = 3
b = 5
c = a + b # 8

# La valeur nil
# Cette valeur signifie une abscence de valeur
variable # nil

# Les constantes
# La déclaration d'une constante se fait comme une variable sauf que le nom commence par une majuscule.
# Pour faciliter la récupération d'une constante, on écrit le nom de la constante tout en majuscule
# Attention, même s'il s'agit d'une constante, la valeur peut être modifiée ( un message d'alerte apparait)
# warning: already initialized constant PI
# warning: previous definition of PI was here

# Convention de nommage
# Une variable ne peut pas commencer par un chiffre, contenir des signes de ponctuation et des symboles opératoires.
# Certains mots sont réservés :

###########################################################
# =begin # break    # elsif  # module # retry  # unless   #
# =end   # case     # end    # next   # return # until    #
# BEGIN  # class    # ensure # nil    # self   # when     #
# END    # def      # false  # not    # super  # while    #
# alias  # defined? # for    # or     # then   # yield    #
# and    # do       # if     # redo   # true   # __FILE__ #
# begin  # else     # in     # rescue # undef  # __LINE__ #
###########################################################

# Il est conseillé d'écrire les noms des variables en snake_case et les constantes en screaming_nake_case
ma_super_variable
MA_SUPER_CONSTANTE


# Les chaînes de caractères
# Une chaîne de caractères est entourée de guillements simples ou doubles
'Bonjour'
"Bonjour"

# Une chaîne de caractères peut être assignée à une variable ou une constante
mot = "Je suis une chaîne de caractères"
MOT = "Je suis aussi une chaîne de caractères"
# Les syntaxes %() %q() et %Q()
mot = %(zeste)
mot = %q(zeste)
mot = %Q(zeste)

# Opérations sur les chaînes de caractères
# La concaténation
'Bonjour ' + 'tout le monde' # Bonjour tout le monde

mot = 'zeste'
'Faites un ' + mot + ' envers votre prochain' # Faites un zeste envers votre prochain

mot = 'zeste '
mot * 3 # zeste zeste zeste

mot = 'zeste'
mot << ' de savoir' # zeste de savoir
# La variable mot vaut alors 'zeste de savoir'

# L'interpolation
mot = 'zeste'
nouveau-mot = "Faites un  + #{mot} + envers votre prochain" # Faites un zeste envers votre prochain

# La convertion de variables
# Les variables peuvent être converties en utilisant une méthode

#####################################################
# Code # Action                                     #
#####################################################
# to_s # Convertir en chaîne de caractères (string) #
# to_i # Convertir en entier (int)                  #
# to_f # Convertir en flottant (float)              #
#####################################################

x = 3 # 3
x.to_s # "3"
x.to_f # 3.0

# Une chaîne de caractères convertie en int ou float donnera 0 ou 0.0

# Saisir et afficher des informations

# La méthode print ou puts (pour afficher une chaîne de caractères ou un nombre)
# puts va à la ligne alors que print non

puts "Une chaîne de caractères"
puts 2 
puts 3.5

a = 3
puts a

# La méthode gets (pour demander des informations à l'utilisateur)
puts "Entre votre prénom : "
firstname = gets.chomp
puts "Bonjour #{firstname}"
# .chomp permet de supprimer \n renvoyé par la méthode gets
