class AdminController < ApplicationController

	before_filter :authenticate

	def index
		@recipes = Recipe.find(:all, :order => "id desc")
	  @contacts = Contact.all
	end
	
	def list
	 @products = Product.all
	end
	
	def list_categories
	 @categories = Category.all
	end

  def list_textevents
    @textevents = Textevent.all
  end
  
  def list_fotos
    @pictures = Picture.all
  end

	def check_recipes
	
		respond_to do |format|
		
			unless params[:r_id]
				format.html { redirect_to admin_index_url }
				flash[:warn] = "E necessario que voce escolha alguma receita para clicar aqui!"			
			else
				@recipe = Recipe.find(params[:r_id])
				@recipe.each do |d|
					d.update_attributes(:passed => true)
					format.html { redirect_to admin_index_url }
				end #each
			end #unless
		
		end #respond_to
  	
  end #method
  
	def lock
		@recipe = Recipe.find(params[:id])
		@recipe.update_attributes(:passed => false)
		redirect_to admin_index_url
  end

end