class CreateEventsContacts < ActiveRecord::Migration[5.0]
  def change
     create_table :contacts_events, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :contact, index: true
    end
  end
end
