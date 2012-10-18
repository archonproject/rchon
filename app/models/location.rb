class Location < ActiveRecord::Base
  attr_accessible :description, :name, :repository_limit
  has_many :accessionLocationEntries
  has_many :collectionLocationEntries
  has_many :accessions, :through => :accessionLocationEntries
end
