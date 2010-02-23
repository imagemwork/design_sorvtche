class ProductSweeper < ActionController::Caching::Sweeper
  observe Product # este sweeper observará o model product
  
  # se o sweeper detectar que o um novo product foi criado
  def after_create(product)
    expire_cache_for(product)
  end
  
  # se o sweeper detectar que o um product existente foi atualizado
  def after_update(product)
    expire_cache_for(product)
  end
  
  # se o sweeper detectar que o um product existente foi apagado
  def after_destroy(product)
    expire_cache_for(product)
  end
  
  private
  def expire_cache_for(record)
    # Isso removera /products.html
    expire_page(:controller => 'products', :action => 'index')

    # Isso removera /products/2.html
    expire_page(:controller => 'products', :action => 'show', :id => 1)
    
    # Isso removera /products/page/2.html e outras na mesma pasta
    cache_dir = ActionController::Base.page_cache_directory
    logger.info "Expired pages: #{Dir.glob("#{cache_dir}/products/page/*").map { |f| f.gsub(cache_dir, '') }.join(', ')}"
    FileUtils.rm_r(Dir.glob("#{cache_dir}/products/page/*")) rescue Errno::ENOENT
  end
end
