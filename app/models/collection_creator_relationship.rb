class CollectionCreatorRelationship < ActiveRecord::Base
  attr_accessible :collection_id, :creator_id, :primary_creator
end
