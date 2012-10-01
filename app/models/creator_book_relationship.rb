class CreatorBookRelationship < ActiveRecord::Base
  attr_accessible :book_id, :creator_id, :primary_creator
  belongs_to :book
  belongs_to :creator
  validates_presence_of :book_id
  validates_presence_of :creator_id
end
