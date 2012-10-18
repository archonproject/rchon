class Location < ActiveRecord::Base
  attr_accessible :description, :name, :repository_limit
  has_many :accessionLocationEntries ,:dependent => :destroy
  has_many :collectionLocationEntries ,:dependent => :destroy
  has_many :accessions, :through => :accessionLocationEntries
  has_many :collections, :through=> :collectionLocationEntries
end
