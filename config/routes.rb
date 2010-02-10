ActionController::Routing::Routes.draw do |map|
  map.resources :vd_products


  map.resources :events, :contacts, :categories, :home, :recipes,:pictures, :textevents, :vd_products
  map.resources :admin, :collection => {:list => :get, :list_categories => :get, :list_textevents => :get, :list_fotos => :get}
  map.resources :products, :collection => {:busca => :get}
  map.with_options :controller => "home" do |home|
  	home.empresa "empresa", :action => "empresa"
  end

 	map.root :controller => "home"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
