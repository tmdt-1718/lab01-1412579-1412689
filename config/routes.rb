Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index', as: :home
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create', as: :plogin
  get '/logout', to: 'sessions#destroy', as: :logout
end
