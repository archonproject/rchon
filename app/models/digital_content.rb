class DigitalContent < ActiveRecord::Base
  attr_accessible :browsable, :collection_content_id, :collection_id, :content_url, :contributor, :date, :hyperlink_url, :identifier, :physical_description, :publisher, :rights_statement, :scope, :title
  belongs_to :collection
  belongs_to :collection_content
end
