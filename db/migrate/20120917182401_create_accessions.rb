class CreateAccessions < ActiveRecord::Migration
  def change
    create_table :accessions do |t|
      t.boolean :enabled
      t.string :accession_date
      t.string :title
      t.string :identifier
      t.string :inclusive_dates
      t.decimal :received_extent
      t.integer :received_extent_unit_id
      t.decimal :unprocessed_extent
      t.integer :unprocessed_extent_unit_id
      t.integer :material_type_id
      t.integer :processing_priority_id
      t.string :expected_completion_date
      t.string :donor
      t.text :donor_contact_info
      t.text :donor_notes
      t.text :physical_description
      t.text :scope_content
      t.text :comments

      t.timestamps
    end
  end
end
