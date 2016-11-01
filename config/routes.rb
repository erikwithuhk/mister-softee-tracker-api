Rails.application.routes.draw do
  namespace :api do
    post "authenticate" => "auth#authenticate"
    resources :users
  end
end
