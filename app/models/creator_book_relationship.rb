class CreatorBookRelationship < ActiveRecord::Base
  attr_accessible :book_id, :creator_id, :primary_creator
end
