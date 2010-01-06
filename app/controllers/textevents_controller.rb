class TexteventsController < ApplicationController
  
  before_filter :authenticate, :only => [:new, :edit, :destroy]
  layout "admin"  
    
  def new
    @textevent = Textevent.new
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
  
end
