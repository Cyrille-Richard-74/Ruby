# Les tableaux

    ## Généralités

        ### Déclarer un tableau
        tab = []
        print tab # [] On obtient un tableau vide

        tab = [1, 2, 3]
        print tab # [1, 2, 3]

        tab = 1, 2, 3
        print tab # [1, 2, 3]
        # Les crochets ne sont pas obligatoires. Cependant, ils le sont dans le cas où il y a moins de deux éléments

        tab = [3.23, 'Trois virgule vingt-trois', [3, '.', 2, 3]]
        print tab # [3.23, 'Trois virgule vingt-trois', [3, '.', 2, 3]]

            #### Tableaux de chaînes de caractères
            # On peut utiliser la syntaxe %w et %W pour écrire des tableaux de chaînes de caractères, %w représente des '' et %W ""
            a = %w[un deux trois] # Equivaut à a = ['un', 'deux', 'trois']

            # Pour saisir une chaîne de caractères avec un espace, il faut l'échapper
            a = %W[une\ chaîne deux] # Equivaut à a = ["une chaîne", "deux"]

    ## Opérations sur les tableaux

        ### Accéder à un élément
        grammaire = %w[mais ou et donc or ni car]
        print grammaire[2] # et

        grammaire = %w[mais ou et donc or ni car]
        print grammaire [1..5] # ["ou", "et", "donc", "or", "ni"]

        ### Concaténation et ajout d'éléments
        tab = [1, 2, 3]
        tab += [4, 5, 6]
        print tab # [1, 2, 3, 4, 5, 6]

        tab = [1, 2, 3]
        tab *= 3
        print tab # [1, 2, 3, 1, 2, 3, 1, 2, 3]

        tab1 = [1, 2]
        tab2 = [1, 2]
        tab1 += [3]
        tab2 << [3]
        print tab1 # [1, 2, 3]
        print tab2 # [1,2, [3]]

            #### Ajouter un élément à un indice précis
            tab = [1, 2, 3]
            tab[5] = 6
            print tab # [1, 2, 3, nil, nil, 5]

        ### Parcourir le tableau
        menu_viande = ["un steak haché", "une entrecôte", "un rôti", "un faux-filet"]
        for m in menu_viande
            puts "Voulez-vous #{m} pour le dîner de ce soir ?"
        end

        menu_viande = ["un steak haché", "une entrecôte", "un rôti", "un faux-filet"]
        tab_length = menu_viande.length
        tab_length.times { |i| puts "Voulez-vous #{menu_viande[i]} pour le dîner ce soir ?" }

            #### La méthode each
            menu_viande = ["un steak haché", "une entrecôte", "un rôti", "un faux-filet"]
            menu_viande.each { |m| puts "Voulez-vous #{m} pour le dîner de ce soir ?" }

            #### La méthode each_with_index
            menu_viande = ["un steak haché", "une entrecôte", "un rôti", "un faux-filet"]
            menu_viande.each_with_index { |e, i| puts "Voulez-vous #{i} (#{e}) pour le dîner de ce soir ?" }

    ## Lien avec les chaînes de caractères

        ### Accéder à un élément
        chaine = "Bonjour"
        print chaine[3] # j
        print chaine[1..3] # onj

        ### Parcourir une chaîne de caractères
        chaine = 'bonjour'
        chaine_length = chaine.length
        chaine_length.times { |i| print "#{chaine[i]} " } # b o n j o u r

        chaine = 'bonjour'
        chaine.each_char { |c| print "#{c} "} # b o n j o u r

        chaine = "bonjour\nle\nmonde."
        chaine.each_line { |l| print "#{l}" }

        chaine = 'bonjour le monde'
        chaine.each_line(' ') { |l| print "#{l}" }

        ### De la chaîne au tableau
        print 'bonjour'.chars # ["b", "o", "n", "j", "o", "u", "r"]
        print "je suis clem".split # ["je", "suis", "clem"]
        print 'un, deux, trois'.split(, ) # ['un', 'deux', 'trois']
        print 'bonjour'.split('') # ['b', 'o', 'n', 'j', 'o', 'u', 'r']

        print ["un", "deux", "trois"].join # "undeuxtrois"
        print ["un", "deux", "trois"].join(", ") # "un, deux, trois"
        print [1, 2, 3].join(", ") # "1, 2, 3"

