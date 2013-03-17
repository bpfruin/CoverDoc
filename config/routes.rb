CoverDoc::Application.routes.draw do
  


  root :to => 'posts#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get '/users', :controller => 'posts', :action => 'index'

  get '/specialties', :controller => 'posts', :action => 'index'



  resources :password_resets

  resources :sessions


  resources :users


  resources :specialties


  resources :posts


  resources :messages



end
