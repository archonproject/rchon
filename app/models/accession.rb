class Accession < ActiveRecord::Base
  attr_accessible :accession_date, :comments, :donor, :donor_contact_info, :donor_notes, :enabled, :expected_completion_date, :identifier, :inclusive_dates, :material_type_id, :physical_description, :processing_priority_id, :received_extent, :received_extent_unit_id, :scope_content, :title, :unprocessed_extent, :unprocessed_extent_unit_id
  belongs_to :material_type
  belongs_to :processing_priority
  belongs_to :extent_unit
  has_many :accession_location_entries ,:dependent => :destroy
  has_many :creator_accession_relationships,:dependent => :destroy
  has_many :accession_subject_relationships, :dependent => destroy
  has_many :accession_collection_relationships, :dependent => destroy
  has_many :locations, :through => :accession_location_entries
  has_many :subjects, :through => :accession_subject_relationships
  has_many :creators, :through => :creator_accession_relationships
  has_many :collections, :through => :accession_collection_relationships

end
