Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'signup'  => 'users#create'
      resources :users
      post "login" => "auth#authenticate"
      resources :vendors, only: [:index, :show]
      resources :customers, only: [:index, :show]
    end
  end
end
