class DigitalContent < ActiveRecord::Base
  attr_accessible :browsable, :collection_content_id, :collection_id, :content_url, :contributor, :date, :hyperlink_url, :identifier, :physical_description, :publisher, :rights_statement, :scope, :title
  belongs_to :collection
  belongs_to :collection_content
  has_many :digital_content_creator_relationships ,:dependent => :destroy
  has_one :digital_content_file
  has_many :creators , :through => :digital_content_creator_relationships
end
