class HomeController < ApplicationController
	
	def index
		@recipes = Recipe.find(:all, :conditions => "passed = 't'", :order => "id desc", :limit => "1")
	end
	
	def franquias
		
	end
	
end
