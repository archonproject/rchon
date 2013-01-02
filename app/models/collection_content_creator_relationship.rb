 class CollectionContentCreatorRelationship < ActiveRecord::Base
  belongs_to :collection_content
  belongs_to :creator
end