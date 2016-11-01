Rails.application.routes.draw do
  post "authenticate" => "auth#authenticate"
end
