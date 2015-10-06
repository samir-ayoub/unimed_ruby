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

ActiveRecord::Schema.define(version: 20150930013943) do

  create_table "medicos", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "crm",        limit: 255
    t.string   "telefone",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "nome",                 limit: 255
    t.string   "sobrenome",            limit: 255
    t.string   "telefone",             limit: 255
    t.string   "codigo_identificacao", limit: 255
    t.string   "endereco",             limit: 255
    t.string   "cidade",               limit: 255
    t.string   "estado",               limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "tipo",       limit: 255
    t.string   "descricao",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome",       limit: 50
    t.string   "login",      limit: 50, null: false
    t.string   "password",   limit: 50, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "visita", force: :cascade do |t|
    t.string   "endereco",    limit: 255
    t.datetime "dia"
    t.integer  "hora",        limit: 4
    t.string   "descricao",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "paciente_id", limit: 4
  end

end
