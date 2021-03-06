# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141024122912) do

  create_table "avaliacoes", force: true do |t|
    t.string   "positiva"
    t.string   "negativa"
    t.integer  "usuario_id"
    t.integer  "cidade_id"
    t.integer  "lugar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliacoes", ["cidade_id"], name: "index_avaliacoes_on_cidade_id"
  add_index "avaliacoes", ["lugar_id"], name: "index_avaliacoes_on_lugar_id"
  add_index "avaliacoes", ["usuario_id"], name: "index_avaliacoes_on_usuario_id"

  create_table "cidades", force: true do |t|
    t.string   "nome"
    t.string   "país"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.string   "emails"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lugares", force: true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.integer  "cidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lugares", ["cidade_id"], name: "index_lugares_on_cidade_id"

  create_table "usuarios", force: true do |t|
    t.string   "login"
    t.string   "senha"
    t.string   "nome"
    t.integer  "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email_id"], name: "index_usuarios_on_email_id"

end
