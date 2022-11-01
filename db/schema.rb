# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_01_114831) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "actor_applicant_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "preferred_role"
    t.string "interest_reason"
    t.string "availability"
    t.string "audition_tape"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_actor_applicant_forms_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "artist_applicant_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "art_form"
    t.string "art_style"
    t.string "interest_reason"
    t.string "availability"
    t.string "art_submission"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_artist_applicant_forms_on_user_id"
  end

  create_table "available_backstage_forms", force: :cascade do |t|
    t.string "role_title"
    t.string "project_involved"
    t.string "role_description"
    t.string "requirements"
    t.string "applicants_needed"
    t.string "applications"
    t.string "filled"
    t.datetime "application_window_end", precision: nil
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_available_backstage_forms_on_admin_id"
  end

  create_table "available_frontstage_forms", force: :cascade do |t|
    t.string "role_title"
    t.string "project_involved"
    t.string "role_description"
    t.string "requirements"
    t.string "applicants_needed"
    t.string "applications"
    t.string "filled"
    t.datetime "application_window_end", precision: nil
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_available_frontstage_forms_on_admin_id"
  end

  create_table "complaint_forms", force: :cascade do |t|
    t.string "project_involved"
    t.string "complaint_cause"
    t.string "people_involved"
    t.string "desired_action"
    t.string "additional_information"
    t.string "availability"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_complaint_forms_on_user_id"
  end

  create_table "crew_applicant_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "preferred_role"
    t.string "experience_level"
    t.string "interest_reason"
    t.string "availability"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_crew_applicant_forms_on_user_id"
  end

  create_table "glitch_input_forms", force: :cascade do |t|
    t.string "glitch_title"
    t.string "glitch_message"
    t.string "spoiler_hint"
    t.string "riddle_hint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information_forms", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "nation"
    t.string "city"
    t.string "phone_number"
    t.string "introduction"
    t.string "bio"
    t.string "social_media"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["user_id"], name: "index_information_forms_on_user_id"
  end

  create_table "musician_applicant_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "preferred_style"
    t.string "instrument"
    t.string "interest_reason"
    t.string "availability"
    t.string "audition_tape"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_musician_applicant_forms_on_user_id"
  end

  create_table "new_project_forms", force: :cascade do |t|
    t.string "project_title"
    t.string "project_introduction"
    t.string "project_description"
    t.string "available_frontstage_roles"
    t.string "available_backstage_roles"
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_new_project_forms_on_admin_id"
  end

  create_table "resignation_forms", force: :cascade do |t|
    t.string "project_involved"
    t.string "resignation_cause"
    t.string "people_involved"
    t.string "possible_solution"
    t.string "additional_information"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_resignation_forms_on_user_id"
  end

  create_table "selection_forms", force: :cascade do |t|
    t.string "role_involved"
    t.string "project_involved"
    t.string "applicant_selected"
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_selection_forms_on_admin_id"
  end

  create_table "transfer_forms", force: :cascade do |t|
    t.string "current_project"
    t.string "preferred_project"
    t.string "current_role"
    t.string "prefered_role"
    t.string "transfer_reason"
    t.string "outcome_expectation"
    t.string "availability"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_transfer_forms_on_user_id"
  end

  create_table "update_forms", force: :cascade do |t|
    t.string "update_title"
    t.string "project_involved"
    t.string "update_description"
    t.bigint "admin_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_update_forms_on_admin_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "actor_applicant_forms", "users"
  add_foreign_key "artist_applicant_forms", "users"
  add_foreign_key "available_backstage_forms", "admins"
  add_foreign_key "available_frontstage_forms", "admins"
  add_foreign_key "complaint_forms", "users"
  add_foreign_key "crew_applicant_forms", "users"
  add_foreign_key "information_forms", "users"
  add_foreign_key "musician_applicant_forms", "users"
  add_foreign_key "new_project_forms", "admins"
  add_foreign_key "resignation_forms", "users"
  add_foreign_key "selection_forms", "admins"
  add_foreign_key "transfer_forms", "users"
  add_foreign_key "update_forms", "admins"
end
