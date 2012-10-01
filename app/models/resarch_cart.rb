class ResarchCart < ActiveRecord::Base
  attr_accessible :collection_content_id, :collection_id, :researcher_id
  belongs_to :collection
  belongs_to :collection_content
 
end
