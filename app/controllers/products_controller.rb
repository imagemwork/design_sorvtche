class ProductsController < ApplicationController
  
  before_filter :authenticate, :only => [:new, :edit, :destroy]
	layout "admin", :only => ["new", "edit"]
  def index 
    @categories = Category.all
    @products = Product.all
    respond_to do |format|
      format.html { render :layout => "application" }
    end
  end
  
  def busca
    @products = Product.search(params[:search])
    respond_to do |format|
      format.html { render :layout => "application" }
    end
  end

  def show
    @products = Product.all(:conditions => "category_id = '#{params[:id]}'")
		@category = Category.find(params[:id])
    respond_to do |format|
      format.html { render :layout => "application" }
    end
  end

  def new	
    @product = Product.new
    @vds = VdProduct.all
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @product = Product.find(params[:id])
    @vds = VdProduct.all
  end

  def create
     @vds = VdProduct.all
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(:controller => "admin", :action => "index") }
      else
        format.html { render :action => "new", :layout => "admin" }
      end
    end
  end

  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Produto Alterado com Sucesso!'
        format.html { redirect_to(:controller => "admin", :action => "list") }
      else
        format.html { render :action => "edit", :layout => "admin" }
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(:controller => "admin", :action => "list") }
      format.xml  { head :ok }
    end
  end
end
