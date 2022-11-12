Rails.application.routes.draw do
  devise_for :users
  resources :myevents

  get "/events/attend", to: "myevents#attend", as: "attend_myevent"
  get "/profile", to: "application#profile", as: "profile"
  
  get "/events", to: "myevents#index"
  root "application#index"
end
