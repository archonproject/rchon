class Subject < ActiveRecord::Base
  attr_accessible :description, :identifier, :parent_id, :subject, :subject_source_id, :subject_type_id
  belongs_to :subject_source
  has_many :accessions, :through => :accession_subject_relationships
end
