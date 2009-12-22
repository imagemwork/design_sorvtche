ActionController::Routing::Routes.draw do |map|
  map.resources :pictures

  map.resources :events, :contacts, :categories, :home, :products, :recipes, :admin

 	map.root :controller => "home"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
