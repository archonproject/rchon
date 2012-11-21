class ExtentUnit < ActiveRecord::Base
  attr_accessible :name
  has_many :accessions
  has_many :collections, :through => :collection_location_entries
  has_many :locations, :through => :collection_location_entries
end
