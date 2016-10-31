Rails.application.routes.draw do
  namespace :api,
            defaults: { format: :json },
            constraints: { subdomain: 'api' },
            path: '/' do
    namespace :v1 do
      post 'signup' => 'users#create'
      resources :users
      post 'login' => 'sessions#create'
      delete 'logout' => 'sessions#destroy'
      resources :sessions
    end
  end
end
