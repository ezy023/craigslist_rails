Craigslist::Application.routes.draw do
  
  root :to => 'posts#index'

  resources :users
  resources :posts
  resources :categories, :only => [:show, :index]
  resources :sessions, only: [:new, :create, :destroy]
  
  match 'signup', :to => 'users#new', :as => :signup
  match 'signin', :to => 'sessions#new', :as => :signin
  match 'logout', :to => 'sessions#destroy'

end
