class CollectionCreatorRelationship < ActiveRecord::Base
  attr_accessible :collection_id, :creator_id, :primary_creator
  has_one :collection
  has_one :creator
  validates_presence_of :collection
  validates_presence_of :creator
end
