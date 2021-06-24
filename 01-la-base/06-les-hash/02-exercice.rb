#   - Gérer une liste d'élèves
#   - Un élève aura un nom, un prénom et un âge (nous pourrons tester que l'âge est valide).
#   - Proposer à l'utilisateur trois choix :
#     - Ajouter un élève;
#     - Afficher la liste des élèves;
#     - Quitter.

def ajouterÉlève(tab)
  print "\nNom : "
  nom = gets.chomp

  print 'Prénom : '
  prénom = gets.chomp

  print 'Âge : '
  âge = gets.chomp.to_i

  tab << { 
    'nom' => nom,
    'prénom' => prénom,
    'âge' => âge 
  }

  print "\nL’élève #{nom} #{prénom} a été ajouté.\n\n"

 end

 def afficherListe(tab)
  tab.each { |e| puts "- #{e["nom"]} #{e["prénom"]}" }
  print "\n\n"
 end

 def choisir()
 print "1. Ajouter un élève.\n2. Afficher la liste des élèves.\n3. Quitter.\n\n"

  print 'Votre choix ? '

  return gets.chomp.to_i

end

tab = []
choix = 0

while choix != 3
  choix = choisir
if choix == 1 then ajouterÉlève(tab)
elsif choix == 2 then afficherListe(tab)
end
end

