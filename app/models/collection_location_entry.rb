class CollectionLocationEntry < ActiveRecord::Base
  attr_accessible :collection_id, :content, :extent, :extent_unit_id, :location_id, :range_value, :section, :shelf
  has_one :location
  has_one :collection
  validates_associated :location
  validates_associated :collection
end
