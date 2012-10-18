class CollectionCreatorRelationship < ActiveRecord::Base
  attr_accessible :collection_id, :creator_id, :primary_creator
  belongs_to :collection
  belongs_to :creator
  validates_presence_of :collection_id
  validates_presence_of :creator_id
end
