class Gossip
	attr_accessor :author, :content

	def initialize(author, content)
  @content = content
  @author = author
	end

	def save
		CSV.open("db/gossip.csv", "a") { |csv| csv << [@author, @content] }	
	end

	def self.all
		all_gossips = []

		CSV.read("db/gossip.csv").each do |ligne|
			tmp = Gossip.new(ligne.first, ligne.last)
			all_gossips << tmp
		end
	end

	def self.destroy(index_gossip)
		all_gossips = Gossip.all
		all_gossips.delete_at(index_gossip)
		CSV.open("db/gossip.csv", "w") { |csv| all_gossips.each { |gossip| csv << gossip } }
	end
end