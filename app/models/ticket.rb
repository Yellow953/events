class Ticket < ApplicationRecord
    belongs_to :event, class_name: "Myevent", foreign_key: "myevent_id"
    belongs_to :user, class_name: "User", foreign_key: "user_id"
end