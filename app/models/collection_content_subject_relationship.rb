 class CollectionContentSubjectRelationship < ActiveRecord::Base
  belongs_to :collection_content
  belongs_to :subject
end