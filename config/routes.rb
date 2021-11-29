Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :categories, only: [:index, :create, :destroy]
      resources :books, only: [:index, :create, :show, :update, :destroy]
      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
    end
  end
end
