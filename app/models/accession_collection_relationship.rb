 class AccessionCollectionRelationship < ActiveRecord::Base
  belongs_to :accessions
  belongs_to :collections
  belongs_to :classifications
end