module ApplicationHelper

  def produtos
    @products = Product.all
  end

	def selected(name)
		content_for(name) { "selected" }	
	end

end
