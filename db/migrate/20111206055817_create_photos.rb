class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :notes
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.references :person
      t.references :event

      t.timestamps
    end
    add_index :photos, :person_id
    add_index :photos, :event_id
  end
end
