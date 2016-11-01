Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'signup'  => 'users#create'
      post 'login'  => 'sessions#create'
      delete 'logout' => 'sessions#destroy'
      resources :users
      post "authenticate" => "auth#authenticate"
    end
  end
end
