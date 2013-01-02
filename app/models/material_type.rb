class MaterialType < ActiveRecord::Base
  attr_accessible :name
  has_many :accessions
  has_many :collections
end
