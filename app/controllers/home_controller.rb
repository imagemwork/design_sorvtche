class HomeController < ApplicationController
	
	def index
		@recipes = Recipe.find(:all, :order => "id desc", :limit => 1)
	end
	
	def franquias
		
	end
	
end
