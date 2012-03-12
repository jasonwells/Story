# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111206062332) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.text     "notes"
    t.integer  "person_id"
    t.date     "event_date"
    t.boolean  "approximate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["person_id"], :name => "index_events_on_person_id"

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "birth"
    t.string   "birth_place"
    t.date     "death"
    t.string   "death_place"
    t.string   "gender"
    t.integer  "father_id"
    t.integer  "mother_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["father_id"], :name => "index_people_on_father_id"
  add_index "people", ["mother_id"], :name => "index_people_on_mother_id"

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.text     "notes"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_taken"
  end

  add_index "photos", ["event_id"], :name => "index_photos_on_event_id"
  add_index "photos", ["person_id"], :name => "index_photos_on_person_id"

end
