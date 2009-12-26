class PicturesController < ApplicationController

  before_filter :authenticate, :only => [:new, :edit, :destroy]
  layout "admin", :only => ['new', 'edit']

  def index
    @pictures = Picture.all
    @events = Event.all

    respond_to do |format|
      format.html { render :layout => "application" }
      
    end
  end

  # GET /pictures/1
  # GET /pictures/1.xml
  def show
    @pictures = Picture.find(:all, :conditions => "event_id = '#{params[:id]}'")
    @textevent = Textevent.find(:all, :conditions => "event_id = '#{params[:id]}'")

    respond_to do |format|
      format.html { render :layout => "application" }
    end
  end

  # GET /pictures/new
  # GET /pictures/new.xml
  def new
    @picture = Picture.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @picture }
    end
  end

  # GET /pictures/1/edit
  def edit
    @picture = Picture.find(params[:id])
  end

  # POST /pictures
  # POST /pictures.xml
  def create
    @picture = Picture.new(params[:picture])

    respond_to do |format|
      if @picture.save
        flash[:admin] = 'Foto adicionada com sucesso.'
        format.html { redirect_to(new_picture_path) }
      else
        format.html { render :action => "new", :layout => "admin" }
      end
    end
  end

  # PUT /pictures/1
  # PUT /pictures/1.xml
  def update
    @picture = Picture.find(params[:id])

    respond_to do |format|
      if @picture.update_attributes(params[:picture])
        flash[:admin] = 'Dados atualizados com sucesso.'
        format.html { redirect_to(admin_index_path) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.xml
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to(pictures_url) }
      format.xml  { head :ok }
    end
  end
end
