class ProductsController < ApplicationController

	layout "admin", :only => ["new", "edit"]

  def index
  	
  	@categories = Category.all
  	@products = Product.all
	
    respond_to do |format|
      format.html { render :layout => "application" }
    end
    
  end

  # GET /products/1
  # GET /products/1.xml
  def show
    @products = Product.all(:conditions => "categories_id = '#{params[:id]}'")
		@category = Category.find(params[:id])
    respond_to do |format|
      format.html { render :layout => "application" }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
  	
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
    end
    
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(products_path) }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Produto Alterado com Sucesso!'
        format.html { redirect_to(products_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
end
