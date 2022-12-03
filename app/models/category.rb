class Category < ApplicationRecord

    has_many :event_categories
    has_many :myevents, through: :event_categories

end