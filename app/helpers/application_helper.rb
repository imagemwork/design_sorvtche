module ApplicationHelper

  def title(page_title)
		content_for(:title) { page_title }
	end

  def produtos
    @products = Product.all
  end

	def selected(name)
		content_for(name) { "selected" }	
	end

end
