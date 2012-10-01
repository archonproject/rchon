class CreatorRelationship < ActiveRecord::Base
  attr_accessible :creator_id, :creator_relationship_type_id, :description, :related_creator_id
  belongs_to :creator
  validates_presence_of :creator_id
  validates_presence_of :related_creator_id
end
