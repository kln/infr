Infracontrol::Application.routes.draw do
  devise_for :views
  devise_for :users
  
  resources :equips
  resources :servers
  resources :computers
  
  root :to => "servers#index"

end
