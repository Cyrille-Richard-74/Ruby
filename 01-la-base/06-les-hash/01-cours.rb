# Tableaux associatifs

  # Déclarer un hash
  hash = {}
  print hash # {}

  hash = {
    'nom'     => 'Mon nom',
    'prenom'  => 'Mon prénom',
    'age'     => 47
  }
  print hash # {"nom"=>"Mon nom", "prenom"=>"Mon prénom", "age"=>47}

# Opérations sur les hash

  # Accéder à un élément
  hash = {
    'nom'     => 'Mon nom',
    'prenom'  => 'Mon prénom',
    'age'     => 47
  }
  print hash['nom'] # Mon nom

  # Ajout d'éléments
  hash = {
    'nom'     => 'Mon nom',
    'prenom'  => 'Mon prénom',
    'age'     => 47
  }
  hash['autre'] = "nouveau"
  print hash # {"nom"=>"Mon nom", "prenom"=>"Mon prénom", "age"=>47, "autre"=>"nouveau"}

  hash = {
    'nom'     => 'Mon nom',
    'prenom'  => 'Mon prénom',
    'age'     => 47,
    'nom'     => 'Mon nouveau nom'
  }
  print hash # {"nom"=>"Mon nouveau nom", "prenom"=>"Mon prénom", "age"=>47}main.rb:3: warning: key "nom" is duplicated and overwritten

  # Parcourir le hash
  hash = {
    'nom'     => 'Mon nom',
    'prenom'  => 'Mon prénom',
    'age'     => 47
  }
  for i in hash
    puts "#{i}"
  end
  # ["nom", "Mon nom"]
  # ["prenom", "Mon prénom"]
  # ["age", 47]

    ## Parcourir par clés valeurs
    hash = {
      'nom'     => 'Mon nom',
      'prenom'  => 'Mon prénom',
      'age'     => 47
    }
    hash.each { |key, value| 
      puts "La valeur #{value} est associée à la clé #{key}." }
      # La valeur Mon nom est associée à la clé nom.
      # La valeur Mon prénom est associée à la clé prenom.
      # La valeur 47 est associée à la clé age.

    ## Parcourir les clés
    hash = {
      'nom'     => 'Mon nom',
      'prenom'  => 'Mon prénom',
      'age'     => 47
    }
    hash.each_key {
      |key| puts "La clé #{key} est une des clés du hash."
    }
    # La clé nom est une des clés du hash.
    # La clé prenom est une des clés du hash.
    # La clé age est une des clés du hash.
