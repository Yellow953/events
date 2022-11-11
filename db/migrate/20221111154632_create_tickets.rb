class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :event, class_name: "Myevent"
      t.belongs_to :attendee, class_name: "User"
      t.timestamps
    end
  end
end
