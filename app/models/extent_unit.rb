class ExtentUnit < ActiveRecord::Base
  attr_accessible :name
  has_many :accessions
end
