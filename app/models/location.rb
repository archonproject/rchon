class Location < ActiveRecord::Base
  attr_accessible :description, :name, :repository_limit
end
