require 'controller'

class Router
	attr_accessor :controller

	def initialize
		@controller = Controller.new
	end

	def perform
		puts "BIENVENUE DANS THE GOSSIP PROJECT"

		while true
			puts "Tu veux faire quoi jeune mouss' ?"
			puts "1. Je veux créer un potin"
			puts "2. Je veux afficher tous les potins"
			puts "3. Je veux supprimer un potin"
			puts "4. Je veux quitter l'app"
			print "> "

			case gets.chomp.to_i
			when 1 then @controller.create_gossip
			when 2 then @controller.index_gossips
			when 3 then @controller.destroy_gossip
			when 4 then break
			else
				puts "Ce choix n'existe pas, merci de ressayer"
			end
		end
		puts "À bientôt !"
	end
end