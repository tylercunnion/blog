ActionController::Routing::Routes.draw do |map|

  map.resources :categories
  map.resources :assets
  map.resource :user_session
  map.resource :account, :controller => "users"
  map.resources :users
  map.resources :posts
  
  map.dashboard 'admin', :controller => 'admin', :action => 'index'
  map.namespace :admin do |admin|
    admin.resources :posts
    admin.resources :categories
    admin.settings "settings/:action", :controller => "settings"
  end
  
  map.root :posts

end
