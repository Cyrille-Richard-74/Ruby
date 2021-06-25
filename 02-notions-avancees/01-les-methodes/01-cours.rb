# Une méthode s'écrit :
    ## Le mot clé def
    ## Nom de la méthode
    ## Un ou plusieurs paramètres
    ## end

## A l'intérieur on écrit la logique (code à exécuter)

def convert_to_min(seconds)
    return seconds / 60
end

# Pour utiliser la méthode :
puts convert_to_min(60)

## Créer une fonction en lui passant en paramètre le nom, et cela retourne bonjour 'le nom saisi'
def hello_name(name)
    return name
end
puts "Bonjour #{hello_name("John")} "

def bonjour(nom)
    return "Bonjour #{nom}"
end
puts bonjour('John')

# Si le mot clé return n'est pas mis, ruby renvoit le résultat de la dernière ligne de la méthode

def new_convert_to_min(seconds)
    # Retourne 0 si seconds n'est pas de type integer
    return 0 if !seconds.is_a? Integer
    seconds / 60
end

puts new_convert_to_min("60")

def salutation(nom, prefix)
    puts "#{prefix} #{nom}"
end

salutation("jean", "bonjour")
salutation("marc", "salut")

# Paramètres optionnels
def salutation(nom, prefix = "Bonjour")
    puts "#{prefix} #{nom}"
end

salutation("jean")
salutation("marc", "salut")

# Fonctions avec paramètres non définis
# Splat = convertit une liste en un tableau
def liste(*noms)
    # puts noms.inspect
    noms.each do |nom|
        puts "- #{nom}"
    end
end

liste("Marc", "Jean", "Marion", "Manon", "Marine", "Jonathan")

def liste(prefix, *noms)
    # puts noms.inspect
    noms.each do |nom|
        puts "- #{prefix} #{nom}"
    end
end

liste("Bonjour", "Marc", "Jean", "Marion", "Manon", "Marine", "Jonathan")