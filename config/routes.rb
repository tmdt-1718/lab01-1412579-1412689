Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'
  get '/albums', to: 'home#albums'
  get '/abouts', to: 'home#abouts'
end
