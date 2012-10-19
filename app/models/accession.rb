class Accession < ActiveRecord::Base
  attr_accessible :accession_date, :comments, :donor, :donor_contact_info, :donor_notes, :enabled, :expected_completion_date, :identifier, :inclusive_dates, :material_type_id, :physical_description, :processing_priority_id, :received_extent, :received_extent_unit_id, :scope_content, :title, :unprocessed_extent, :unprocessed_extent_unit_id
  has_one :material_type
  has_many :accession_location_entries
  has_many :creator_accession_relationships

end
