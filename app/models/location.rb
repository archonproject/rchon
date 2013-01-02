class Location < ActiveRecord::Base
  attr_accessible :description, :name, :repository_limit
  has_many :accession_location_entries ,:dependent => :destroy
  has_many :collection_location_entries ,:dependent => :destroy
  has_many :location_repository_relationships, :dependent => :destroy
  has_many :accessions, :through => :accession_location_entries
  has_many :collections, :through => :collection_location_entries
  has_many :repositories, :through => :location_repository_relationships
end
