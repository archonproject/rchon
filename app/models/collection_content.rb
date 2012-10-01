class CollectionContent < ActiveRecord::Base
  attr_accessible :collection_id, :contains_content, :date, :description, :enabled, :level_container_id, :level_container_identifier, :parent_id, :private_title, :root_content_id, :sort_order, :title
  belongs_to :collection
  belongs_to :level_container
  has_many :digitalContents
  has_many :resarchCarts
end
