# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_180_905_004_052) do
  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.integer 'record_id', null: false
    t.integer 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'leads', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'email', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'title', limit: 60, default: '', null: false
    t.string 'career', limit: 60, default: '', null: false
    t.string 'institution', limit: 60, default: '', null: false
    t.string 'address', limit: 60, default: '', null: false
    t.string 'city', limit: 60, default: '', null: false
    t.string 'postal_code', limit: 60, default: '', null: false
    t.string 'country', limit: 60, default: '', null: false
    t.string 'phone_number', limit: 60, default: '', null: false
    t.boolean 'student', default: false
    t.integer 'paper'
    t.integer 'symposium'
    t.integer 'table_discussion'
  end

  create_table 'users', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'email', null: false
    t.string 'encrypted_password', limit: 128, null: false
    t.string 'confirmation_token', limit: 128
    t.string 'remember_token', limit: 128, null: false
    t.index ['email'], name: 'index_users_on_email'
    t.index ['remember_token'], name: 'index_users_on_remember_token'
  end
end
