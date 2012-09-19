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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120918021239) do

  create_table "accessions", :force => true do |t|
    t.boolean  "enabled"
    t.string   "accession_date"
    t.string   "title"
    t.string   "identifier"
    t.string   "inclusive_dates"
    t.decimal  "received_extent"
    t.integer  "received_extent_unit_id"
    t.decimal  "unprocessed_extent"
    t.integer  "unprocessed_extent_unit_id"
    t.integer  "material_type_id"
    t.integer  "processing_priority_id"
    t.string   "expected_completion_date"
    t.string   "donor"
    t.text     "donor_contact_info"
    t.text     "donor_notes"
    t.text     "physical_description"
    t.text     "scope_content"
    t.text     "comments"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "edition"
    t.string   "publication_date"
    t.string   "place_of_publication"
    t.string   "publisher"
    t.string   "series"
    t.integer  "copy_edition"
    t.integer  "number_of_pages"
    t.text     "description"
    t.text     "notes"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "classifications", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "creator_id"
    t.string   "classification_identifier"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "collection_contents", :force => true do |t|
    t.integer  "collection_id"
    t.integer  "level_container_id"
    t.integer  "root_content_id"
    t.integer  "parent_id"
    t.integer  "sort_order"
    t.string   "level_container_identifier"
    t.string   "date"
    t.boolean  "contains_content"
    t.boolean  "enabled"
    t.text     "title"
    t.text     "private_title"
    t.text     "description"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "collection_creator_relationships", :force => true do |t|
    t.integer  "collection_id"
    t.integer  "creator_id"
    t.boolean  "primary_creator"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "collections", :force => true do |t|
    t.boolean  "enabled"
    t.decimal  "extent"
    t.string   "collection_identifier"
    t.string   "title"
    t.string   "sort_title"
    t.string   "inclusive_dates"
    t.string   "predominant_dates"
    t.string   "acquisition_date"
    t.string   "orig_copies_url"
    t.string   "related_materials_url"
    t.string   "publication_date"
    t.string   "biog_hist_author"
    t.string   "finding_aid_author"
    t.integer  "repository_id"
    t.integer  "classification_id"
    t.integer  "descpriptive_rules_id"
    t.integer  "finding_language_id"
    t.integer  "normal_date_begin"
    t.integer  "normal_date_end"
    t.integer  "extent_unit_id"
    t.integer  "material_type_id"
    t.text     "scope"
    t.text     "abstract"
    t.text     "arrangement"
    t.text     "alt_extent_statement"
    t.text     "access_restrictions"
    t.text     "use_restrictions"
    t.text     "physical_access"
    t.text     "technical_access"
    t.text     "acquisition_source"
    t.text     "acquisition_method"
    t.text     "appraisal_info"
    t.text     "accrual_info"
    t.text     "custodial_history"
    t.text     "orig_copies_note"
    t.text     "related_materials"
    t.text     "related_publications"
    t.text     "separated_materials"
    t.text     "preferred_citation"
    t.text     "other_note"
    t.text     "other_url"
    t.text     "processing_info"
    t.text     "revision_history"
    t.text     "publication_note"
    t.text     "biog_hist"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "creator_relationships", :force => true do |t|
    t.integer  "creator_id"
    t.integer  "related_creator_id"
    t.integer  "creator_relationship_type_id"
    t.text     "description"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "creator_sources", :force => true do |t|
    t.string   "creator_source"
    t.string   "source_abbreviation"
    t.text     "citation"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "creators", :force => true do |t|
    t.string   "name"
    t.string   "name_fuller_Form"
    t.string   "name_variants"
    t.integer  "creator_type_id"
    t.string   "dates"
    t.string   "lcnaf_dates"
    t.boolean  "lcnaf_compliant"
    t.string   "biog_hist_author"
    t.text     "biog_hist"
    t.text     "sources"
    t.integer  "respository_id"
    t.integer  "language_id"
    t.integer  "script_id"
    t.string   "identifier"
    t.integer  "creator_source_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "digital_content_creator_relationships", :force => true do |t|
    t.integer  "digital_content_id"
    t.integer  "creator_id"
    t.boolean  "primary_creator"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "digital_content_files", :force => true do |t|
    t.integer  "default_access_level"
    t.integer  "digital_content_id"
    t.string   "title"
    t.integer  "display_order"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "digital_contents", :force => true do |t|
    t.boolean  "browsable"
    t.string   "title"
    t.integer  "collection_id"
    t.integer  "collection_content_id"
    t.string   "identifier"
    t.text     "scope"
    t.text     "physical_description"
    t.string   "date"
    t.string   "publisher"
    t.string   "contributor"
    t.text     "rights_statement"
    t.string   "content_url"
    t.boolean  "hyperlink_url"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "extent_units", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "level_containers", :force => true do |t|
    t.string   "name"
    t.string   "ead_level"
    t.boolean  "intellectual_level"
    t.boolean  "physical_container"
    t.boolean  "primary_ead_level"
    t.boolean  "global_numbering"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.boolean  "repository_limit"
    t.text     "description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "material_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "processing_priorities", :force => true do |t|
    t.string   "processing_priority"
    t.integer  "sort_order"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "repositories", :force => true do |t|
    t.string   "name"
    t.string   "administrator"
    t.string   "code"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zip"
    t.string   "phone"
    t.string   "phone_ext"
    t.string   "fax"
    t.string   "email"
    t.string   "url"
    t.text     "email_signature"
    t.integer  "research_functionality"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "resarch_carts", :force => true do |t|
    t.integer  "researcher_id"
    t.integer  "collection_id"
    t.integer  "collection_content_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "research_appointment_purposes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "research_appointments", :force => true do |t|
    t.integer  "submit_time"
    t.integer  "researcher_id"
    t.integer  "appointment_purpose_id"
    t.integer  "arrival_time"
    t.integer  "departure_time"
    t.string   "topic"
    t.text     "researcher_comments"
    t.text     "archivist_comments"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "subject_sources", :force => true do |t|
    t.string   "subject_source"
    t.string   "ead_source"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "subjects", :force => true do |t|
    t.string   "subject"
    t.integer  "subject_type_id"
    t.integer  "subject_source_id"
    t.integer  "parent_id"
    t.string   "identifier"
    t.text     "description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "user_fields", :force => true do |t|
    t.integer  "collection_content_id"
    t.integer  "ead_element_id"
    t.string   "title"
    t.text     "value"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end
