class MaterialType < ActiveRecord::Base
  attr_accessible :name
  has_many :accessions
end
