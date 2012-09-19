class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.boolean :enabled
      t.decimal :extent
      t.string :collection_identifier
      t.string :title
      t.string :sort_title
      t.string :inclusive_dates
      t.string :predominant_dates
      t.string :acquisition_date
      t.string :orig_copies_url
      t.string :related_materials_url
      t.string :publication_date
      t.string :biog_hist_author
      t.string :finding_aid_author
      t.integer :repository_id
      t.integer :classification_id
      t.integer :descpriptive_rules_id
      t.integer :finding_language_id
      t.integer :normal_date_begin
      t.integer :normal_date_end
      t.integer :extent_unit_id
      t.integer :material_type_id
      t.text :scope
      t.text :abstract
      t.text :arrangement
      t.text :alt_extent_statement
      t.text :access_restrictions
      t.text :use_restrictions
      t.text :physical_access
      t.text :technical_access
      t.text :acquisition_source
      t.text :acquisition_method
      t.text :appraisal_info
      t.text :accrual_info
      t.text :custodial_history
      t.text :orig_copies_note
      t.text :related_materials
      t.text :related_publications
      t.text :separated_materials
      t.text :preferred_citation
      t.text :other_note
      t.text :other_url
      t.text :processing_info
      t.text :revision_history
      t.text :publication_note
      t.text :biog_hist

      t.timestamps
    end
  end
end
