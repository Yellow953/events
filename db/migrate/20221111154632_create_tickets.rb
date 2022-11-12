class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :myevent, class_name: "Myevent"
      t.belongs_to :user, class_name: "User"
      t.timestamps
    end
  end
end
