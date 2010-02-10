class VdProductsController < ApplicationController
  # GET /vd_products
  # GET /vd_products.xml
  layout "admin"
  def index
    @vd_products = VdProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vd_products }
    end
  end

  # GET /vd_products/1
  # GET /vd_products/1.xml
  def show
    @vd_product = VdProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vd_product }
    end
  end

  # GET /vd_products/new
  # GET /vd_products/new.xml
  def new
    @vd_product = VdProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vd_product }
    end
  end

  # GET /vd_products/1/edit
  def edit
    @vd_product = VdProduct.find(params[:id])
  end

  # POST /vd_products
  # POST /vd_products.xml
  def create
    @vd_product = VdProduct.new(params[:vd_product])

    respond_to do |format|
      if @vd_product.save
        flash[:notice] = 'VdProduct was successfully created.'
        format.html { redirect_to(@vd_product) }
        format.xml  { render :xml => @vd_product, :status => :created, :location => @vd_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vd_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vd_products/1
  # PUT /vd_products/1.xml
  def update
    @vd_product = VdProduct.find(params[:id])

    respond_to do |format|
      if @vd_product.update_attributes(params[:vd_product])
        flash[:notice] = 'VdProduct was successfully updated.'
        format.html { redirect_to(@vd_product) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vd_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vd_products/1
  # DELETE /vd_products/1.xml
  def destroy
    @vd_product = VdProduct.find(params[:id])
    @vd_product.destroy

    respond_to do |format|
      format.html { redirect_to(vd_products_url) }
      format.xml  { head :ok }
    end
  end
end
