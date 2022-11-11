class Myevent < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key:"user_id"

    has_many :tickets
    has_many :attendees, through: :tickets

end