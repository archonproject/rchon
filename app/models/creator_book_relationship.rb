class CreatorBookRelationship < ActiveRecord::Base
  attr_accessible :book_id, :creator_id, :primary_creator
  has_one :book
  has_one :creator
  validates_presence_of :book_id
  validates_presence_of :creator_id
end
