class Classification < ActiveRecord::Base
  attr_accessible :classification_identifier, :creator_id, :description, :parent_id, :title
  belongs_to :creator
  belongs_to :classification, :foreign_key => "parent_id"
  has_many :collections
  has_many :accession_collection_relationships, :dependent => :destroy
  has_many :accessions, :through => :accession_collection_relationships
end
