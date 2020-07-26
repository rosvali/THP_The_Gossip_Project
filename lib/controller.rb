require 'gossip'
require 'view'

class Controller
	attr_accessor :view

	def initialize
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
		my_gossip = Gossip.new(params[:author], params[:content])
		my_gossip.save
	end

	def index_gossips
		@view.index_gossips(Gossip.all)
	end

	def destroy_gossip
		index_gossip = @view.destroy_gossip(Gossip.all)
		Gossip.destroy(index_gossip)
	end
end