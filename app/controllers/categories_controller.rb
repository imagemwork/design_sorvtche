class CategoriesController < ApplicationController

  before_filter :authenticate, :only => [:new, :edit, :destroy]
	layout "admin", :only => ["new", "edit"]
  
  def index
    @categories = Category.all
    respond_to do |format|
        format.html { render :layout => "application" }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml


  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        flash[:notice] = 'Category was successfully created.'
        format.html { redirect_to(:controller => "admin") }
        format.xml  { render :xml => @category, :status => :created, :location => @category }
      else
        format.html { render :action => "new", :layout => "admin" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        flash[:notice] = 'Category was successfully updated.'
        format.html { redirect_to(:controller =>"admin", :action => "list_categories") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def show
    @products = Product.all(:conditions => "category_id = '2'")
		#@category = Category.find(params[:c])
    respond_to do |format|
      format.html { render :layout => "application" }
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to(:controller => "admin", :action => "index" ) }
      format.xml  { head :ok }
    end
  end
end
