class Language < ActiveHash::Base
  has_many :collections
  has_many :collection_language_relationships, :dependent => :destroy
  has_many :collections, :through => :collection_language_relationsips
end