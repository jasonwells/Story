class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birth
      t.string :birth_place
      t.date :death
      t.string :death_place
      t.string :gender
      t.references :father
      t.references :mother

      t.timestamps
    end
    add_index :people, :father_id
    add_index :people, :mother_id
  end
end
