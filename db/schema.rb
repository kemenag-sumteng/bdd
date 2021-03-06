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

ActiveRecord::Schema.define(version: 2019_05_01_145125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_keagamaan_katolik", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tautan"
    t.index ["pengguna_id"], name: "index_data_keagamaan_katolik_on_pengguna_id"
  end

  create_table "data_pendidikan_agama_katolik", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tautan"
    t.index ["pengguna_id"], name: "index_data_pendidikan_agama_katolik_on_pengguna_id"
  end

  create_table "galeri_foto", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tautan"
    t.index ["pengguna_id"], name: "index_galeri_foto_on_pengguna_id"
  end

  create_table "galeri_video", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tautan"
    t.index ["pengguna_id"], name: "index_galeri_video_on_pengguna_id"
  end

  create_table "informasi_berita_terkini", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.string "tautan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pengguna_id"], name: "index_informasi_berita_terkini_on_pengguna_id"
  end

  create_table "informasi_pengumuman", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.string "tautan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pengguna_id"], name: "index_informasi_pengumuman_on_pengguna_id"
  end

  create_table "laporan_guru_agama_katolik", force: :cascade do |t|
    t.string "judul"
    t.string "tautan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pengguna_id"], name: "index_laporan_guru_agama_katolik_on_pengguna_id"
  end

  create_table "laporan_pegawai_bimkat_sumteng", force: :cascade do |t|
    t.string "judul"
    t.string "tautan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pengguna_id"], name: "index_laporan_pegawai_bimkat_sumteng_on_pengguna_id"
  end

  create_table "laporan_penyuluh_agama_katolik", force: :cascade do |t|
    t.string "judul"
    t.string "tautan"
    t.bigint "pengguna_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pengguna_id"], name: "index_laporan_penyuluh_agama_katolik_on_pengguna_id"
  end

  create_table "pengguna", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "peran"
    t.string "nama_lengkap"
    t.string "google_token"
    t.string "google_refresh_token"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_pengguna_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pengguna_on_reset_password_token", unique: true
  end

  add_foreign_key "data_keagamaan_katolik", "pengguna"
  add_foreign_key "data_pendidikan_agama_katolik", "pengguna"
  add_foreign_key "galeri_foto", "pengguna"
  add_foreign_key "galeri_video", "pengguna"
  add_foreign_key "informasi_berita_terkini", "pengguna"
  add_foreign_key "informasi_pengumuman", "pengguna"
  add_foreign_key "laporan_guru_agama_katolik", "pengguna"
  add_foreign_key "laporan_pegawai_bimkat_sumteng", "pengguna"
  add_foreign_key "laporan_penyuluh_agama_katolik", "pengguna"
end
