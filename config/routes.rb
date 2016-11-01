Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'signup'  => 'users#create'
      resources :users
      post "login" => "auth#authenticate"
    end
  end
end
