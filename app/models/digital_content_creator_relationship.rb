class DigitalContentCreatorRelationship < ActiveRecord::Base
  attr_accessible :creator_id, :digital_content_id, :primary_creator
  belongs_to :creator
  belongs_to :digital_content
end
