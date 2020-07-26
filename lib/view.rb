require 'gossip'

class	View

	def create_gossip
		puts "Tu as choisi de créer un gossip"
		print "L'auteur du potin > "
		author = gets.chomp
		print "Décrit le potin > "
		content = gets.chomp
		{content: content, author: author}
	end

	def index_gossips(gossips)
		puts "Voici tous les potins :"
		gossips.each { |gossip| puts "Potin : #{gossip}" }
	end

	def destroy_gossip(gossips)
		puts "Tu as choisi de supprimer un potin"
		index_gossips(gossips)
		print "Lequel veux tu supprimer > "
		gets.chomp.to_i
	end
end