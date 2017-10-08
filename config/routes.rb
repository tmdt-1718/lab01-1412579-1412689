Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/albums', to: 'home#albums'
  get '/abouts', to: 'home#abouts'

  get '/', to: 'home#index', as: :home

  #Login route
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create', as: nil
  get '/logout', to: 'sessions#destroy', as: :logout
  
  get '/signup', to: 'user#new', as: :signup
  post '/signup', to: 'user#create', as: nil
  #, :path_names => {:new => 'new' }
  resources :post, only: [:index, :new, :edit, :update, :create, :show] 

  #resources :user, only: [:new,:create], path: '/', path_names: { new: 'signup', create: 'signup'} 

end
