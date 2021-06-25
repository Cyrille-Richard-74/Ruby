=begin
    - Créez une fonction qui prend un tableau et renvoie le premier élément. Notez que le premier élément d’un tableau commence toujours par l’index 0.
    - Exemples :
        getFirst([1, 2, 3]) ➞ 1
        getFirst([50, 60, 70]) ➞ 50
=end

def getFirst(tab)
    return tab.first
end

getFirst([1, 2, 3])
getFirst([50, 60, 70])