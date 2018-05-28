Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :characters
      resources :maps
      resources :tiles
      resources :campaigns

      resources :campaigns, only: :show do
        get '/characters', to: 'campaigns#characters'
        post '/password', to: 'campaigns#password'
      end


      post '/users/login', to: 'users#login'
      resources :users, only: :show do
        get '/maps', to: 'users#maps'
        post '/characters', to: 'users#characters'
      end
    end
  end
end
