class CreatorAccessionRelationship < ActiveRecord::Base
  attr_accessible :accession_id, :classification_id, :collection_id, :primary_collection
end
