Rails.application.routes.draw do
  devise_for :users
  resources :myevents
  
  get "/events", to: "myevents#index"
  root "application#index"
end
