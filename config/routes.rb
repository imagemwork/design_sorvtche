ActionController::Routing::Routes.draw do |map|

  map.resources :events, :contacts, :categories, :home, :products, :recipes, :pictures, :textevents

  map.resources :admin, :collection => {:list => :get, :list_categories => :get}

 	map.root :controller => "home"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
