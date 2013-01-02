class CollectionLocationEntry < ActiveRecord::Base
  attr_accessible :collection_id, :content, :extent, :extent_unit_id, :location_id, :range_value, :section, :shelf
  belongs_to :location
  belongs_to :collection
  belongs_to :extent_unit
end
