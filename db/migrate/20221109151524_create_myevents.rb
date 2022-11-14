class CreateMyevents < ActiveRecord::Migration[7.0]
  def change
    create_table :myevents do |t|
      t.string :name
      t.date :event_date
      t.belongs_to :user 
      # t.references :user
      t.timestamps
    end
  end
end
