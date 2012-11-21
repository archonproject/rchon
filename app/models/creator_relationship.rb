class CreatorRelationship < ActiveRecord::Base
  attr_accessible :creator_id, :creator_relationship_type_id, :description, :related_creator_id
  belongs_to :creator
  belongs_to :creator_relationship_type
end
