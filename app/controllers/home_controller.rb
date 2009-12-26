class HomeController < ApplicationController
	
	layout "application"
	
	def index
		@recipes = Recipe.find(:all, :conditions => "passed = 't'", :order => "id desc", :limit => "1")
	end
	
	def franquias
		
	end
	
	def empresa
	 
	end
	
end
