class CreatorRelationshipType < ActiveHash::Base
  has_many :creator_relationships , :dependent => :destroy
  has_many :creators, :through => :creator_relationships

end