ActionController::Routing::Routes.draw do |map|
  map.resources :people, :member => {:delete => :get}
  map.root :controller => "people"
end
