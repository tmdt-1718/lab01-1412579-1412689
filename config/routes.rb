Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index', as: :home

  #Login route
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create', as: nil
  get '/logout', to: 'sessions#destroy', as: :logout
  
  get '/signup', to: 'user#new', as: :signup
  post '/signup', to: 'user#create', as: nil

  #resources :user, only: [:new,:create], path: '/', path_names: { new: 'signup', create: 'signup'} 
end
