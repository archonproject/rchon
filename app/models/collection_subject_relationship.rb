 class CollectionSubjectRelationship < ActiveRecord::Base
  belongs_to :collection
  belongs_to :subject
end