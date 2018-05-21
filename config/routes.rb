Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :characters
      resources :maps
      resources :tiles
      resources :campaigns

      post '/users/login', to: 'users#login'
      resources :users, only: :show do
        get '/maps', to: 'users#maps'
      end 
    end
  end
end
