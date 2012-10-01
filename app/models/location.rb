class Location < ActiveRecord::Base
  attr_accessible :description, :name, :repository_limit
  has_many :accessionLocationEntries
end
