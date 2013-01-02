<<<<<<< HEAD
class CreatorRelationShipType < ActiveHash::Base
self.data=[ 
{:ID => 1,:CreatorRelationshipType => "identity"},
{:ID => 2,:CreatorRelationshipType => "hierarchical-parent"},
{:ID => 3,:CreatorRelationshipType => "hierarchical-child"},
{:ID => 4,:CreatorRelationshipType => "temporal-earlier"},
{:ID => 5,:CreatorRelationshipType => "temporal-later"},
{:ID => 6,:CreatorRelationshipType => "family"},
{:ID => 7,:CreatorRelationshipType => "associative"}
]
=======
class CreatorRelationshipType < ActiveHash::Base
  has_many :creator_relationships , :dependent => :destroy
  has_many :creators, :through => :creator_relationships

>>>>>>> ed522209b7a7d483c6edb554e85467529b62ca29
end