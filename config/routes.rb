ActionController::Routing::Routes.draw do |map|
  map.resources :categories

  map.resources :assets

  map.resource :user_session
  map.resource :account, :controller => "users"
  map.resources :users
  map.resources :posts
  
  map.namespace :admin do |admin|
    admin.resources :posts
    admin.resources :categories
  end
  
  map.root :posts
  
  map.settings 'admin/settings/:action', :controller => "admin/settings"

end
