class CollectionContent < ActiveRecord::Base
  attr_accessible :collection_id, :contains_content, :date, :description, :enabled, :level_container_id, :level_container_identifier, :parent_id, :private_title, :root_content_id, :sort_order, :title
  belongs_to :collection
  belongs_to :level_container
  belongs_to :collection_content, :foreign_key="parent_id"
  has_many :digitalContents
  has_many :resarch_carts
  has_many :research_appointment_materials
  has_one :user_field, :dependent => :destroy
  has_many :collection_content_subject_relationships, :dependent => :destroy
  has_many :collection_content_creator_relationships, :dependent => :destroy
  has_many :subjects, :through => :collection_content_subject_relationships
  has_many :creators, :through => :collection_content_creator_relationships
end
