class CreateEventCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :event_categories do |t|
      t.belongs_to :myevent
      t.belongs_to :category

      t.timestamps
    end
  end
end
