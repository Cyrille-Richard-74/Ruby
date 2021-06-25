=begin
    - Réorganiser une liste
    - True ordre croissant, false ordre décroissant
    - reorganiser_liste(true, 'Marc', 'Jean', 'Marion', :Manon, :Jonathan, 'Antoine')
    - reorganiser_liste(false, 'Marc', 'Jean', 'Marion', :Manon, :Jonathan, 'Antoine')

=end

def reorganiser_liste(order, *noms)
    convert_list = noms.map(&:to_s)
    # ou
    # convert_list = noms.collect { |nom| nom.to_s}
    convert_list.sort!
    convert_list.reverse! if order == false
    # ou
    # convert_list.sort! {|a,b| b <=> a} if order == false
    return convert_list
end

puts reorganiser_liste(true, 'Marc', 'Jean', 'Marion', :Manon, :Jonathan, 'Antoine').inspect

puts reorganiser_liste(false, 'Marc', 'Jean', 'Marion', :Manon, :Jonathan, 'Antoine').inspect