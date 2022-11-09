json.extract! myevent, :id, :name, :event_date, :created_at, :updated_at
json.url myevent_url(myevent, format: :json)
