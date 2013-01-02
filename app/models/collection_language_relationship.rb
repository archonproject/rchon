 class CollectionLanguageRelationship < ActiveRecord::Base
  belongs_to :collection
  belongs_to :language
end