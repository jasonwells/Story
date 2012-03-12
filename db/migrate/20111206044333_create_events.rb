class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.text :notes
      t.references :person
      t.date :event_date
      t.boolean :approximate

      t.timestamps
    end
    add_index :events, :person_id
  end
end
