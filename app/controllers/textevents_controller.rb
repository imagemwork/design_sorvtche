class TexteventsController < ApplicationController
  
  before_filter :authenticate, :only => [:new, :edit, :destroy]
  layout "admin"  
    
  def new
    @textevent = Textevent.new
    @events = Event.all
  end
  
  def create
    @textevent = Textevent.new(params[:textevent])
    
    respond_to do |format|
      if @textevent.save
        flash[:admin] = "Texto Adicionado com sucesso!"
        format.html { redirect_to(new_textevent_path) }
      else
        format.html { render :action => "new" }
      end
    end
    
  end
  
  def edit
    @textevent = Textevent.find(params[:id])
  end
  
  def update
    @textevent = Textevent.find(params[:id])
    respond_to do |format|
      if @textevent.update_attributes(params[:textevent])
        flash[:admin] = 'Texto atualizado com sucesso!'
        format.html { redirect_to(:controller =>"admin", :action => "list_textevents") }
      else
        format.html { render :action => "edit" }
      end
    end  
  end
  
  def destroy
    @textevent = Textevent.find(params[:id])
    if @textevent.destroy
      flash[:admin] = "Texto deletado com sucesso!"
    end

    respond_to do |format|
      format.html { redirect_to(:controller => "admin", :action => "list_textevents" ) }
      format.xml  { head :ok }
    end
  end
  
end
