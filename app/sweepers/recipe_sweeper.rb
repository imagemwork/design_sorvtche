class RecipeSweeper < ActionController::Caching::Sweeper
  observe Recipe # este sweeper observará o model recipe
  
  # se o sweeper detectar que o um novo recipe foi criado
  def after_create(recipe)
    expire_cache_for(recipe)
  end
  
  def after_check_recipes(recipe)
    expire_cache_for(recipe)
  end
 
  # se o sweeper detectar que o um recipe existente foi apagado
  def after_destroy(recipe)
    expire_cache_for(recipe)
  end
  
  private
  def expire_cache_for(record)
    # Isso removera /recipes.html
    expire_page(:controller => 'recipes', :action => 'index')

    # Isso removera /recipes/2.html
    expire_page(:controller => 'recipes', :action => 'show', :id => record.id)
    
    # Isso removera /recipes/page/2.html e outras na mesma pasta
    cache_dir = ActionController::Base.page_cache_directory
    logger.info "Expired pages: #{Dir.glob("#{cache_dir}/recipes/page/*").map { |f| f.gsub(cache_dir, '') }.join(', ')}"
    FileUtils.rm_r(Dir.glob("#{cache_dir}/recipes/page/*")) rescue Errno::ENOENT
  end
end
