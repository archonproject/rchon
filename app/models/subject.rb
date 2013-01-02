class Subject < ActiveRecord::Base
  attr_accessible :description, :identifier, :parent_id, :subject, :subject_source_id, :subject_type_id
  belongs_to :subject_source
  belongs_to :subject_type
  has_many :accession_subject_relationships, :dependent => :destroy
  has_many :collection_subject_relationships, :dependent => :destroy
  has_many :collection_content_subject_relationships, :dependent => :destroy
  has_many :digital_content_subject_relationships, :dependent => :destroy
  has_many :accessions, :through => :accession_subject_relationships
  has_many :collections, :through => :collection_subject_relationships 
  has_many :digital_contents, :through => :digital_content_subject_relationships
  has_many :collection_contents, :through => :collection_content_subject_relationships
end
