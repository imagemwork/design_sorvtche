class RecipesController < ApplicationController

  layout "application"
  before_filter :authenticate, :only => [:edit, :destroy]
  
  caches_page :index, :show
	cache_sweeper :recipe_sweeper, :only => [:create, :update, :destroy]
  
  def index
    @recipes = Recipe.find(:all, :conditions => "passed = 't'", :order => "id desc")
  end

  def show
        
  	recipe = Recipe.find(params[:id])
  
  	unless recipe.passed == false
			 @recipe = recipe
		else
			 logger.warn("AVISO: Alguem tentou acessar receitas nao permitidas.")
			 render :controller => "recipes", :action => "warn"
  	end

  end

  def new
    @recipe = Recipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recipe }
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    respond_to do |format|
      if @recipe.save
        flash[:notice] = "<i>#{@recipe.person_name}</i>, sua receita irá passar por análise, podendo ser descartada. Obrigado por enviar sua receita!"
        format.html { redirect_to(:action => "index") }
        format.xml  { render :xml => @recipe, :status => :created, :location => @recipe }
      else
        flash.now[:error_contact] = "Verifique os campos em destaque!"
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        flash[:notice] = 'Recipe was successfully updated.'
        format.html { redirect_to(@recipe) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to(admin_index_url) }
      format.xml  { head :ok }
    end
  end
end
