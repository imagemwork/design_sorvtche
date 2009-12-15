ActionController::Routing::Routes.draw do |map|
  map.resources :contacts

  map.resources :categories, :home
  map.resources :products

  map.resources :recipes
  map.resources :admin, :collection => {:list => :get}

 	map.root :controller => "home"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  
 
end
