Rails.application.routes.draw do
  devise_for :users
  resources :myevents
  
  root "myevents#index"
end
