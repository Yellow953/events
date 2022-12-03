Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :myevents

  get "/events/attend", to: "myevents#attend", as: "attend_myevent"
  get "/profile", to: "application#profile", as: "profile"
  
  get "/category/:category/events", to: "application#events_for_this_category", as: "events_for_this_category"
  get "/events/:category", to: "application#events", as: "events"
  get "/category/:category/event/:event", to: "application#make_this_event_for_this_category", as: "make_this_event_for_this_category"

  get "/events", to: "myevents#index"
  root "application#index"
end
