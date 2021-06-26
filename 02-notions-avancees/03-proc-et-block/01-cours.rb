tableau = [1, 2, 6]
tableau2 = tableau.map { |item| item * 2 }
puts tableau2.inspect

def demo
    puts "Bonjour"
    yield
    puts "Au revoir"
end
demo { puts "Comment ça va ?" }

def demo
    puts "Bonjour"
    yield('Marc')
    puts "Au revoir"
    yield('Jean')
end
demo { |nom| puts "#{nom} Comment ça va ?" }

eleves = [
    {note: 15, nom: 'Marine'},
    {note: 4, nom: 'Marc'},
    {note: 10, nom: 'Jean'},
    {note: 12, nom: 'Marion'},
]

def alamoyenne(eleves)
    eleves.each do |eleve|
        if eleve[:note] >= 10
            yield(eleve)
        end
    end
end

alamoyenne(eleves) do |eleve|
    puts "#{eleve[:nom]} a la moyenne"
end

a = [1, 2, 3, 6]
b = [1, 7, 9]
# Ici le même block est répété deux fois
a.map! { |n| n**2 }
b.map! { |n| n**2 }

puts a.inspect
puts b.inspect

# Un block ne peut être sauvegardé dans une variable
a = [1, 2, 3, 6]
b = [1, 7, 9]
# On utilise les Proc qui est sauvegaré dans une variable
carre = Proc.new { |n| n**2 }
# Pour utiliser un Proc comme un block, il faut utiliser le &
a.map!(&carre)
b.map!(&carre)

puts a.inspect
puts b.inspect

eleves = [
    {note: 15, nom: 'Marine'},
    {note: 4, nom: 'Marc'},
    {note: 10, nom: 'Jean'},
    {note: 12, nom: 'Marion'},
]

def alamoyenne(eleves)
    eleves.each do |eleve|
        if eleve[:note] >= 10
            yield(eleve)
        end
    end
end
showMoyenne = Proc.new { |eleve| puts "#{eleve[:nom]} a la moyenne" }

alamoyenne(eleves, &showMoyenne)

# Le Proc peut être appelé avec un paramètre
showMoyenne.call({note: 12, nom: 'Marion'})

# Si dans la fonction, on veut récuprérer un Proc plutôt qu'un block
eleves = [
    {note: 15, nom: 'Marine'},
    {note: 4, nom: 'Marc'},
    {note: 10, nom: 'Jean'},
    {note: 12, nom: 'Marion'},
]

def alamoyenne(eleves, &moyenne)
    eleves.each do |eleve|
        if eleve[:note] >= 10
            moyenne.call(eleve)
        end
    end
end

alamoyenne(eleves) { |eleve| puts "#{eleve[:nom]} a la moyenne" }

# Si on créé une méthode et que l'on passe un Proc en paramètre, le Proc devient automatiquement un block dans la méthode, et si dans la déclaration on met un & un bloc deviendra un block

eleves = [
    {note: 15, nom: 'Marine'},
    {note: 4, nom: 'Marc'},
    {note: 10, nom: 'Jean'},
    {note: 12, nom: 'Marion'},
]

def average(eleves, haveAverage, notAverage)
    eleves.each do |eleve|
        if eleve[:note] >= 10
            haveAverage.call(eleve)
        else
            notAverage.call(eleve)
        end
    end
end

haveAverage = Proc.new { |eleve| puts "#{eleve[:nom]} a la moyenne" }
notAverage = Proc.new { |eleve| puts "#{eleve[:nom]} n'a pas la moyenne" }

average(eleves, haveAverage, notAverage)

# Les lambda sont des objets qui sont similaires aux Proc
# Un lambda prend un nombre de paramètre déterminé

# Dans le cas d'un lambda, le call est effectué
def a_lambda
    a = lambda { return "Salut"}
    a.call
    return "Au revoir"
end

# Dans le cas d'u proc, le call est ignoré à cause du return déclaré dans le proc
def a_proc
    a = Proc.new { return "Salut"}
    a.call
    return "Au revoir"
end

puts a_lambda
puts a_proc

# lambda = Vérifie les paramètres, return renvoi à la fonction
# Proc = Ne vérifie pas les paramètres, le return bloque la fonction

haveAverage = lambda { |eleve| puts "#{eleve[:nom]} a la moyenne" }
# Peut s'écrire
haveAverage = ->(eleve) { puts "#{eleve[:nom]} a la moyenne" }