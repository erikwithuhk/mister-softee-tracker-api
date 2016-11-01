Rails.application.routes.draw do
  devise_for :user, only: []
  namespace :api,
            defaults: { format: :json },
            constraints: { subdomain: 'api' },
            path: '/' do
    namespace :v1 do
      resource :login, only: [:create], controller: :sessions
      # post 'signup' => 'users#create'
      # resources :users
      # post 'login' => 'sessions#create'
      # delete 'logout' => 'sessions#destroy'
      # resources :sessions
    end
  end
end
