=begin par rapport a une liste :

créer un hash pour stocker les handle
obtenir un array (deja fait logiquement) des handle
itérer sur le tableau précédent 
remplir le hash 
afficher les informations

organiser les handle pour sortir les sort_by
=end

=begin         compteur de d'ocurrence des mots par boucle each
text = "Nous allons nous arrêter un instant afin dessayer de mettre en pratique tout ce que lon a vu jusquà maintenant à travers un exemple concret Pour cet exercice nous allons essayer de calculer la fréquence des mots dans un texte en utilisant les éléments vus précédemment"

frequence = {}
mots = text.downcase.split(' ')
mots.each do |mot|
    if 
        frequence[mot]
        frequence[mot] += 1   #
    else
        frequence[mot] = 1
        
    end
end

puts frequence.inspect
=end


=begin             # compteur d'occurence par boucle each améliorer

text = "Nous allons nous arrêter un instant afin dessayer de mettre en pratique tout ce que lon a vu jusquà maintenant à travers un exemple concret Pour cet exercice nous allons essayer de calculer la fréquence des mots dans un texte en utilisant les éléments vus précédemment"

frequence = Hash.new(0)
mots = text.downcase.split(' ')   # on peut retirer le ponctuation en faisant ".tr('.,":, '')"
mots.each do |mot|
     
           frequence[mot] += 1   # incrémenter de 1
      end

frequence.each do |mot, count|

puts "Le mot \"#{mot}\"apparait #{count} fois"
end

puts frequence.inspect
=end


text = "Nous allons nous arrêter un instant afin dessayer de mettre en pratique tout ce que lon a vu jusquà maintenant à travers un exemple concret Pour cet exercice nous allons essayer de calculer la fréquence des mots dans un texte en utilisant les éléments vus précédemment"

frequence = Hash.new(0)
mots = text.downcase.split(' ')   # on peut retirer le ponctuation en faisant ".tr('.,":, '')"
mots.each do |mot|                # mettre en majuscule ou en minuscule avec .downcase.split ou .uppercase.split
     
           frequence[mot] += 1   # incrémenter de 1
      end

a = frequence.sort_by  {|mot, count| count}  # dans son format = se passe de do et end
a.reverse!   # .reverse pour la manière décroissante
puts a.inspect








=begin
# methode 3
frequence.each do |mot, count|

puts "Le mot \"#{mot}\"apparait #{count} fois"
end

puts frequence.inspect
=end

=begin
# Mes classes
text = "Nous allons nous arrêter un instant afin dessayer de mettre en pratique tout ce que lon a vu jusquà maintenant à travers un exemple concret Pour cet exercice nous allons essayer de calculer la fréquence des mots dans un texte en utilisant les éléments vus précédemment"
frequence = Hash.new(0)
mots = text.split(' ')   # on peut retirer le ponctuation en faisant ".tr('.,":, '')"
                                  # mettre en majuscule ou en minuscule avec .downcase.split ou .uppercase.split
#ma boucle
mots.each do |mot|                
        frequence[mot] += 1   # incrémenter de 1
      end

 frequence = frequence.sort_by  {|mot, count| count}  # dans son format = se passe de do et end
frequence.reverse!   # .reverse pour la manière décroissante


frequence.each do |mot| 

puts "Le mot \"#{mot[0]}\" apparait #{mot[1]} fois"
end

#puts frequence.inspect
=end




