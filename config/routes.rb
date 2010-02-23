ActionController::Routing::Routes.draw do |map|
  
  map.resources :vd_products
  map.resources :contacts, :as => "contato", :path_names => {:new => "nova-mensagem"}

  map.resources :categories, :textevents, :events
  map.resources :admin, :collection => {:list => :get, :list_categories => :get, :list_textevents => :get, :list_fotos => :get}
  map.resources :products, :collection => {:busca => :get}
  map.resources :recipes, :as => "receitas"
  map.resources :home, :as => "incial"
  map.resources :pictures, :as => "eventos"
  map.with_options :controller => "home" do |home|
  	home.empresa "empresa", :action => "empresa"
  end

 	map.root :controller => "home"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
