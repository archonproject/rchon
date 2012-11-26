class Language < ActiveHash::Base
  has_many :collections
  has_many :collection_language_relationships, :dependent => :destroy
  has_many :collections, :through => :collection_language_relationsips
  has_many :creators
  has_many :digital_content_language_relationships
  has_many :digital_contents, :through => :digital_content_creator_relationships
end