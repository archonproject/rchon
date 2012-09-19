class Classification < ActiveRecord::Base
  attr_accessible :classification_identifier, :creator_id, :description, :parent_id, :title
end
