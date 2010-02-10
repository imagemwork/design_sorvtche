# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100208161234) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "nome"
    t.string   "assunto"
    t.string   "email"
    t.text     "mensagem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "event_file_name"
    t.string   "event_content_type"
    t.integer  "event_file_size"
    t.datetime "event_updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "code"
    t.string   "name"
    t.integer  "weight"
    t.text     "ingredients"
    t.integer  "vd_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "produto_file_name"
    t.string   "produto_content_type"
    t.integer  "produto_file_size"
    t.datetime "produto_updated_at"
    t.string   "v_calorico"
    t.string   "carb"
    t.string   "proteinas"
    t.string   "gorduras_t"
    t.string   "gorduras_s"
    t.string   "gordruras_tra"
    t.string   "fibra"
    t.string   "sodio"
  end

  create_table "recipes", :force => true do |t|
    t.string   "person_name"
    t.string   "email"
    t.string   "name"
    t.text     "ingredients"
    t.text     "preparation"
    t.text     "tip"
    t.boolean  "passed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textevents", :force => true do |t|
    t.string   "title"
    t.string   "location"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.integer  "event_id"
  end

  create_table "vd_products", :force => true do |t|
    t.string   "v_calorico"
    t.string   "carb"
    t.string   "proteinas"
    t.string   "gorduras_t"
    t.string   "gorduras_s"
    t.string   "gordruras_tra"
    t.string   "fibra"
    t.string   "sodio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
