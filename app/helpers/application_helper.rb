module ApplicationHelper

  def title(page_title)
		content_for(:title) { page_title }
	end

  def produtos
    @products = Product.all
  end

	def selected(name)
		content_for(name) { "tes" }	
	end
	
	def stylesheets(*files)
	 content_for(:stylesheets) { stylesheet_link_merged(*files)}
	end
	
	def javascripts_normal(*files)
	  content_for(:javascripts_normal) { javascript_include_tag(*files )}	 
	end
	
	def javascripts(*files)
	 content_for(:javascripts) {javascript_include_merged(*files)}
	end

end
