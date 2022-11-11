class Ticket < ApplicationRecord
    belongs_to :event, class_name: "Myevent"
    belongs_to :attendee, class_name: "User"
end