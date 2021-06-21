# Les boucles

    ## La boucle while

    ##################
    # exemple d'une table de multiplication

    print "Saisir un numéro de table de multiplication : "
    table_multiplication = gets.chomp.to_i

    i = 0

    while i <= 10
        puts "#{table_multiplication} * #{i} = #{i * table_multiplication}"
        i += 1
    end

    # La forme condensée
    i = 0
    (puts "#{table_multiplication} * #{i} = #{i * table_multiplication}"; i += 1) while i <= 10


        ### La structure begin while
        print "Saisir un numéro de table de multiplication : "
        table_multiplication = gets.chomp.to_i

        i = 0
        begin (puts "#{table_multiplication} * #{i} = #{i * table_multiplication}"; i += 1) end while i <= 10
        

        ### La structure until
        print "Saisir un numéro de table de multiplication : "
        table_multiplication = gets.chomp.to_i

        i = 0

        until i > 10
            puts "#{table_multiplication} * #{i} = #{i * table_multiplication}"
            i += 1
        end

        # La forme condensé
        i = 0
        ((puts "#{table_multiplication} * #{i} = #{i * table_multiplication}"; i += 1) until i > 10

        # En cas de condition négative, until sera préféré à while
    
    ## La boucle for
    for n in 0..5
        print "#{n} " # 0 1 2 3 4 5
    end

    for n in 0...5
        print "#{n} " # 0 1 2 3 4
    end

    ## Contrôle d'exécution

        ### break
        # Permet d'interrompre l'exécution d'une boucle
        i = 0

        while true
            print "#{i} "
            break if i > 6
            i += 1          # 0 1 2 3 4 5 6 7
        end

        ### next
        # Permet d'interrompre un tour de boucle et passer au suivant
        for i in 0..10
            next if i % 2 == 0
            print "#{i}"
        end

        ### redo  
        # Permet de recommencer un tour de boucle
        k = 1
        
        for i in 1..5
            puts i
            if i == k
                k += 1
                redo
            end
        end
        
    ## La boucle loop
    # La boucle loop à la particularité d'être une boucle infinie si elle n'a pas de condition d'arrêt
    i = 0
    loop do
        puts "#{i}"
        break if i == 10
        i += 1
    end

    ## Les itérateurs

        ### Méthode each
        (1..8).each do |i|
            puts i
        end

        # Méthode condensé
        (1..8).each { |i| puts i }

        ### Méthode times
        5.times { |i| puts "#{i}" }

        # Le paramètre de bloc n'est pas obligatoire
        4.times { puts "Voici un message." }
        # Mais par convention s'écrira
        4.time { |_| puts "Voici un message." } 

        # Equivaut à
        for n in 0...5
            print "#{i} "
        end

        ### Méthode upto
        # Si on ne veut pas partir de 0
        2.upto(5) { |i| print "#{i} " }

        # Equivaut à
        for n in 2..5
            print "#{n} "
        end

        ### Méthode downto
        5.downto(2) { |i| print "#{i} "}

        #Equivaut à
        for n in 2..5
            print "#{5 - n + 2}"
        end

        ### Méthode step
        # Compte de 5 en 5 à partir de 2 jusqu'à 18
        2.step(18, 5) { |i| puts i}